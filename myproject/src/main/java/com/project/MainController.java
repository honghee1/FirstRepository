package com.project;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.boot.configurationprocessor.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project.Service.movieService;
import com.project.dto.MovieDTO;

@Controller
public class MainController {
	private movieService movieservice;

	public MainController(movieService movieservice) {
		this.movieservice = movieservice;
	}

	@RequestMapping("/")
	public String main() {
		return "main";
	}
	/*
	 * @PostMapping(value = "/test02.do") public String example(HttpServletRequest
	 * httpServletRequest, Model model,String str) { System.out.println(model);
	 * System.out.println(str); return "test02"; }
	 */
	/*
	 * @RequestMapping(value = "/test02.do", method = { RequestMethod.GET,
	 * RequestMethod.POST }) public String example(HttpServletRequest
	 * httpServletRequest, Model model,MovieDTO dto) { System.out.println("1");
	 * System.out.println(dto); model.addAttribute("list", dto); return "test02"; }
	 */
	@RequestMapping("/test02.do")
	public String example(HttpServletResponse response,MovieDTO dto) {
		System.out.println("1");
		System.out.println(dto);
		return "test02";
	}
	@RequestMapping("/uploadmovie.do")
	public String boardWrite(MovieDTO dto, MultipartHttpServletRequest request) {
		System.out.println("12123"+dto.toString());
		int bno = movieservice.insertMovie(dto);
		/*
		 * //파일 업로드 //저장할 경로 String root = "c:\\fileUpload\\"; File userRoot = new
		 * File(root); if(!userRoot.exists()) userRoot.mkdirs();
		 * 
		 * List<MultipartFile> fileList = request.getFiles("file"); int i = 1;
		 * for(MultipartFile f : fileList) { String originalFileName =
		 * f.getOriginalFilename(); if(f.getSize() == 0) continue; File uploadFile = new
		 * File(root + "\\" +originalFileName); movieService.insertFileList(new
		 * FileDTO(uploadFile, bno, i)); i++; try { //실제로 전송 f.transferTo(uploadFile); }
		 * catch (IllegalStateException e) { e.printStackTrace(); } catch (IOException
		 * e) { e.printStackTrace(); } }
		 */
		System.out.println(bno);
		return "test03";
	}

}