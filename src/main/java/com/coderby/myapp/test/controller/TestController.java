package com.coderby.myapp.test.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TestController {
	@RequestMapping(value = "/test/start")
	public String startTest(Model model) {
		return "/test/start";
	}

	@RequestMapping(value = "/test/bbT")
	public String startbbTest(Model model) {
		return "/test/bbT";
	}

	@RequestMapping(value = "/test/bbT/result")
	public String resultbbTest(HttpServletRequest request, Model model) {
		System.out.println(request.getParameter("q1"));
		System.out.println(request.getParameter("q2"));
		System.out.println(request.getParameter("q3"));
		System.out.println(request.getParameter("q4"));
		System.out.println(request.getParameter("q5"));
		System.out.println(request.getParameter("q6"));
		return "/test/bbT";
	}

	@RequestMapping(value = "/test/cjT")
	public String startcjTest(Model model) {
		return "/test/bbT";
	}

	@RequestMapping(value = "/test/cjT/result")
	public String resultcjTest(HttpServletRequest request, Model model) {
		System.out.println(request.getParameter("q1"));
		System.out.println(request.getParameter("q2"));
		System.out.println(request.getParameter("q3"));
		System.out.println(request.getParameter("q4"));
		System.out.println(request.getParameter("q5"));
		return "/test/bbT";
	}

	@RequestMapping(value = "/test/mjT")
	public String startmjTest(Model model) {
		return "/test/mjT";
	}

	@RequestMapping(value = "/test/mjT/result")
	public String resultmjTest(HttpServletRequest request, Model model) {
		System.out.println(request.getParameter("q1"));
		System.out.println(request.getParameter("q2"));
		System.out.println(request.getParameter("q3"));
		System.out.println(request.getParameter("q4"));
		System.out.println(request.getParameter("q5"));
		return "/test/mjT";
	}

	@RequestMapping(value = "/test/tmT")
	public String starttmTest(Model model) {
		return "/test/tmT";
	}

	@RequestMapping(value = "/test/tmT/result")
	public String resulttmTest(HttpServletRequest request, Model model) {
		System.out.println(request.getParameter("q1"));
		System.out.println(request.getParameter("q2"));
		System.out.println(request.getParameter("q3"));
		System.out.println(request.getParameter("q4"));
		System.out.println(request.getParameter("q5"));
		return "/test/tmT";
	}

	@RequestMapping(value = "/test/ydT")
	public String startydTest(Model model) {
		return "/test/ydT";
	}

	@RequestMapping(value = "/test/ydT/result")
	public String resultydTest(HttpServletRequest request, Model model) {
		System.out.println(request.getParameter("q1"));
		System.out.println(request.getParameter("q2"));
		System.out.println(request.getParameter("q3"));
		System.out.println(request.getParameter("q4"));
		System.out.println(request.getParameter("q5"));
		return "/test/ydT";
	}
}
