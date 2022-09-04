package com.project;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project.Service.movieService;
import com.project.dto.CinemaDTO;
import com.project.dto.FileDTO;
import com.project.dto.MovieDTO;
import com.project.dto.ScreenDTO;
import com.project.dto.ScreenMovieDTO;

@Controller
public class MainController {
	private movieService movieservice;

	public MainController(movieService movieservice) {
		this.movieservice = movieservice;
	}


	@RequestMapping("/close.do")
	public String close(Model model, String mcode) {
		return "close";
	}

	@RequestMapping("/index.do")
	public String index(Model model, String cinemacode, String name, HttpSession session) {
		List<CinemaDTO> Cinemalist = movieservice.selectCinemaList();
		session.setAttribute("cinemacode", cinemacode);
		session.setAttribute("name", name);
		model.addAttribute("Cinemalist", Cinemalist);
		return "index";
	}

	@RequestMapping("/updatemovie-management.do")
	public String updatemovie_management(String mcode) {
		return "redirect:/";
	}

	@RequestMapping("/MyMovieList-management.do")
	public String MyMovieList_management(Model model) {
		List<MovieDTO> list = movieservice.selectMovieList();
		model.addAttribute("list", list);
		return "MyMovieList-management";
	}

	@RequestMapping("/insertMovie-management.do")
	public String insertMovie_management() {
		return "insertMovie-management";
	}

	@RequestMapping("/deletemovie.do")
	public String deretemovie(Model model, String mcode) {
		String[] index = mcode.split(",");
		movieservice.deleteMovie(index);
		return "redirect:/MyMovieList.do";
	}

	@RequestMapping("/cinema-management.do")
	public String test2(Model model, HttpSession session, String cinemacode, String name) {
		List<ScreenDTO> Screenlist = movieservice.selectScreenList(cinemacode);
		model.addAttribute("Screenlist", Screenlist);
		List<CinemaDTO> Cinemalist = movieservice.selectCinemaList();
		session.setAttribute("cinemacode", cinemacode);
		session.setAttribute("name", name);
		model.addAttribute("Cinemalist", Cinemalist);
		return "cinema-management";
	}

	/**
	 * 사이드 메뉴 지점 선택 팝업
	 */
	@RequestMapping("/select_cinema_branch.do")
	public String select_cinema_branch(Model model, String cinemacode) {
		List<ScreenDTO> list = movieservice.selectScreenList(cinemacode);
		model.addAttribute("list", list);
		return "select_cinema_branch";
	}

	@RequestMapping("/insertMovie.do")
	public String insertMovie(HttpSession session, HttpServletResponse response, Model model, MovieDTO dto,
			String cinemacode, String name) {
		List<CinemaDTO> Cinemalist = movieservice.selectCinemaList();
		session.setAttribute("cinemacode", cinemacode);
		session.setAttribute("name", name);
		model.addAttribute("Cinemalist", Cinemalist);
		return "insertMovie";
	}

	@RequestMapping("/insertMovie_pop.do")
	public String insertMovie_pop(HttpServletResponse response, MovieDTO dto) {
		return "insertMovie_pop";
	}

	@RequestMapping("/openAPI.do")
	public String openAPI(MovieDTO dto, Model model, HttpSession session, String cinemacode, String name) {
		List<CinemaDTO> Cinemalist = movieservice.selectCinemaList();
		session.setAttribute("cinemacode", cinemacode);
		session.setAttribute("name", name);
		model.addAttribute("Cinemalist", Cinemalist);
		return "openAPI";
	}

	@RequestMapping("/MyMovieList.do")
	public String MyMovieList(Model model, HttpSession session, String cinemacode, String name) {
		List<CinemaDTO> Cinemalist = movieservice.selectCinemaList();
		session.setAttribute("cinemacode", cinemacode);
		session.setAttribute("name", name);
		model.addAttribute("Cinemalist", Cinemalist);
		List<MovieDTO> Movielist = movieservice.selectMovieList();
		model.addAttribute("Movielist", Movielist);
		List<ScreenMovieDTO> ScreenMovielist = movieservice.selectSYSDATEScreenMovie();
		model.addAttribute("ScreenMovielist", ScreenMovielist);
		return "MyMovieList";
	}

	@RequestMapping("/uploadmovie.do")
	public String boardWrite(Model model, MovieDTO dto, ScreenMovieDTO scdto, MultipartHttpServletRequest request,
			String close, String update) {
		if (update != null) {
			dto.setMcode(update);
			scdto.setmcode(update);
			movieservice.updateMovie(dto, scdto);
			// 파일 업로드
			// 저장할 경로
			String root = "c:\\fileUpload\\";
			File userRoot = new File(root);
			if (!userRoot.exists())
				userRoot.mkdirs();

			/*
			 * List<MultipartFile> fileList = request.getFiles("file"); int i = 1;
			 * for(MultipartFile f : fileList) { String originalFileName =
			 * f.getOriginalFilename(); if(f.getSize() == 0) continue; File uploadFile = new
			 * File(root + "\\" +originalFileName); movieservice.insertFileList(new
			 * FileDTO(uploadFile, mcode, i)); i++; try { f.transferTo(uploadFile); } catch
			 * (IllegalStateException e) { e.printStackTrace(); } catch (IOException e) {
			 * e.printStackTrace(); } }
			 */
			if (close == null) {
				List<MovieDTO> list = movieservice.selectMovieList();
				model.addAttribute("list", list);
				return "redirect:/MyMovieList.do";
			}
			return "close";
		} else {
			String mcode = movieservice.insertMovie(dto, scdto);
			// 파일 업로드
			// 저장할 경로
			String root = "c:\\fileUpload\\";
			File userRoot = new File(root);
			if (!userRoot.exists())
				userRoot.mkdirs();

			List<MultipartFile> fileList = request.getFiles("file");
			int i = 1;
			for (MultipartFile f : fileList) {
				String originalFileName = f.getOriginalFilename();
				if (f.getSize() == 0)
					continue;
				File uploadFile = new File(root + "\\" + originalFileName);
				movieservice.insertFileList(new FileDTO(uploadFile, mcode, i));
				i++;
				try {
					f.transferTo(uploadFile);
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (close == null) {
				List<MovieDTO> list = movieservice.selectMovieList();
				model.addAttribute("list", list);
				return "redirect:/MyMovieList.do";
			}
			return "close";
		}
	}

	@RequestMapping("fileDown.do")
	public void fileDown(int fno, String mcode, HttpServletResponse response) throws IOException {
		String path = movieservice.selectFile(mcode, fno);
		File file = new File(path);
		response.setHeader("Content-Disposition", "attachement;fileName=" + file.getName());
		response.setHeader("Content-Transfer-Encoding", "binary");
		response.setContentLength((int) file.length());

		FileInputStream fis = new FileInputStream(file);
		BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
		byte[] buffer = new byte[1024 * 1024];
		while (true) {
			int size = fis.read(buffer);
			if (size == -1)
				break;
			bos.write(buffer, 0, size);
			bos.flush();
		}
		bos.close();
		fis.close();
	}

	@RequestMapping("/movieView.do")
	public String movieView(String mcode, String update, Model model, HttpSession session) {
		MovieDTO dto = movieservice.selectMovieDTO(mcode);
		List<FileDTO> Filelist = movieservice.selectFilePath(mcode);
		ScreenMovieDTO scdto = movieservice.selectScreenMovieList(mcode);
		model.addAttribute("movie", dto);
		model.addAttribute("Filepath", Filelist);
		model.addAttribute("scdto", scdto);

		return "movie_detail_view";
	}

	@RequestMapping("/NewFile.do")
	public String NewFile(Model model) {
		List<MovieDTO> list = movieservice.selectMovieList();
		model.addAttribute("list", list);
		return "NewFile";
	}

	@RequestMapping("/homev2.do")
	public String homev2(Model model, HttpServletResponse response)  {
		List<MovieDTO> NowShowingMovielist = movieservice.selectNowshowingMovieList();
		model.addAttribute("NowShowingMovielist", NowShowingMovielist);
		List<MovieDTO> ComingSoonMovieList = movieservice.selectComingSoonMovieList();
		
		  System.out.println(ComingSoonMovieList);
		 		model.addAttribute("ComingSoonMovieList", ComingSoonMovieList);
		return "homev2";
	}
	@RequestMapping("/moviesingle.do")
	public String moviesingle(String mcode, String update, Model model, HttpSession session) {
		MovieDTO dto = movieservice.selectMovieDTO(mcode);
		List<FileDTO> Filelist = movieservice.selectFilePath(mcode);
		ScreenMovieDTO scdto = movieservice.selectScreenMovieList(mcode);
		model.addAttribute("movie", dto);
		model.addAttribute("Filepath", Filelist);
		model.addAttribute("scdto", scdto);

		return "moviesingle";
	}

}