package com.sejong.capstone;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CapstoneController {
	public static final String PATH = "/WEB-INF/views/capstone/";
	
	@RequestMapping(value = { "/", "/home.do" })
	public String Home_Page() {
		
		return PATH + "MainPage.jsp";
	}
	
	@RequestMapping("/question_page.do")
	public String Question_Page() {
		return PATH + "Question_Page.jsp";
	}
	@RequestMapping("/graph_page.do")
	public String Graph_Page() {
		return PATH + "Graph_Page.jsp";
	}
	@RequestMapping("/emotion_page.do")
	public String Emotion_Page() {
		return PATH + "Emotion_Page.jsp";
	}
	
	@RequestMapping("/prediction_page.do")
	public String Prediction_Page() {
		return PATH + "Prediction_Page.jsp";
	}
	
	@RequestMapping("/gc_page.do")
	public String Gc_Page() {
		return PATH + "Gc_Page.jsp";
	}
	
	
	
	
}
