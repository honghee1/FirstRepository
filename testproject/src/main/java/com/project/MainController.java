package com.project;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import com.project.dto.CinemaDTO;
import com.project.dto.FileDTO;
import com.project.dto.MovieDTO;
import com.project.dto.ScreenDTO;
import com.project.dto.ScreenMovieDTO;

@Controller
public class MainController {

	@RequestMapping("/")
	public String main(Model model) {
		return "index";
	}
	@RequestMapping("/home-02.do")
	public String home02(Model model) {
		return "home-02";
	}
	@RequestMapping("/blog.do")
	public String blog(Model model) {
		return "blog";
	}
	@RequestMapping("/blog-detail.do")
	public String blog_detail(Model model) {
		return "blog-detail";
	}
	@RequestMapping("/about.do")
	public String about(Model model) {
		return "about";
	}
	@RequestMapping("/contact.do")
	public String contact(Model model) {
		return "contact";
	}
	@RequestMapping("/product.do")
	public String product(Model model) {
		return "product";
	}
	@RequestMapping("/product-detail.do")
	public String product_detail(Model model) {
		return "product-detail";
	}
	@RequestMapping("/shoping-cart.do")
	public String shoping_cart(Model model) {
		return "shoping-cart";
	}
	
}