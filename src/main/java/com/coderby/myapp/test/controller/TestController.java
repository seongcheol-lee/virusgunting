package com.coderby.myapp.test.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.coderby.myapp.test.service.ITestService;

@Controller
public class TestController {
	@Autowired
	ITestService testService;

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
		String url = testService.bbResult(request);
		System.out.println(url);
		return "/test/result";
	}

	@RequestMapping(value = "/test/cjT")
	public String startcjTest(Model model) {
		return "/test/bbT";
	}

	@RequestMapping(value = "/test/cjT/result")
	public String resultcjTest(HttpServletRequest request, Model model) {
		String url = testService.cjResult(request);
		System.out.println(url);
		return "/test/result";
	}

	@RequestMapping(value = "/test/mjT")
	public String startmjTest(Model model) {
		return "/test/mjT";
	}

	@RequestMapping(value = "/test/mjT/result")
	public String resultmjTest(HttpServletRequest request, Model model) {
		String url = testService.mjResult(request);
		System.out.println(url);
		return "/test/result";
	}

	@RequestMapping(value = "/test/tmT")
	public String starttmTest(Model model) {
		return "/test/tmT";
	}

	@RequestMapping(value = "/test/tmT/result")
	public String resulttmTest(HttpServletRequest request, Model model) {
		String url = testService.tmResult(request);
		System.out.println(url);
		return "/test/result";
	}

	@RequestMapping(value = "/test/ydT")
	public String startydTest(Model model) {
		return "/test/ydT";
	}

	@RequestMapping(value = "/test/ydT/result")
	public String resultydTest(HttpServletRequest request, Model model) {
		String url = testService.ydResult(request);
		System.out.println(url);
		return "/test/result";
	}
}
