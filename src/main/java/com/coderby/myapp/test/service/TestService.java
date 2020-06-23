package com.coderby.myapp.test.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

@Service
public class TestService implements ITestService {

	@Override
	public String bbResult(HttpServletRequest request) {
		String url = "IMAGEURL";
		request.getParameter("q1");
		request.getParameter("q2");
		request.getParameter("q3");
		request.getParameter("q4");
		request.getParameter("q5");
		return url;
	}

	@Override
	public String cjResult(HttpServletRequest request) {
		String url = "IMAGEURL";
		request.getParameter("q1");
		request.getParameter("q2");
		request.getParameter("q3");
		request.getParameter("q4");
		request.getParameter("q5");
		return url;
	}

	@Override
	public String mjResult(HttpServletRequest request) {
		String url = "IMAGEURL";
		request.getParameter("q1");
		request.getParameter("q2");
		request.getParameter("q3");
		request.getParameter("q4");
		request.getParameter("q5");
		return url;
	}

	@Override
	public String tmResult(HttpServletRequest request) {
		String url = "IMAGEURL";
		request.getParameter("q1");
		request.getParameter("q2");
		request.getParameter("q3");
		request.getParameter("q4");
		request.getParameter("q5");
		return url;
	}

	@Override
	public String ydResult(HttpServletRequest request) {
		String url = "IMAGEURL";
		request.getParameter("q1");
		request.getParameter("q2");
		request.getParameter("q3");
		request.getParameter("q4");
		request.getParameter("q5");
		return url;
	}

}
