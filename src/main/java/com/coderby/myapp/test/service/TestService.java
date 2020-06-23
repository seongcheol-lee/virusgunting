package com.coderby.myapp.test.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

@Service
public class TestService implements ITestService {

	@Override
	public String bbResult(HttpServletRequest request) {
		String url = "IMAGEURL";
		int value = 0;
		for (int i = 1; i <= 5; i++) {
			String q = "q" + i;
			if (request.getParameter(q).equals("opt1")) {
				value++;
			}
		}
		if (value >= 2) {
			url = "bbRes.jpg";
		} else {
			url = "enjoy.jpg";
		}
		return url;
	}

	@Override
	public String cjResult(HttpServletRequest request) {
		String url = "IMAGEURL";
		int value = 0;
		for (int i = 1; i <= 6; i++) {
			String q = "q" + i;
			if (request.getParameter(q).equals("opt1")) {
				value++;
			}
		}
		if (value >= 3) {
			url = "cjRes.jpg";
		} else {
			url = "enjoy.jpg";
		}
		return url;
	}

	@Override
	public String mjResult(HttpServletRequest request) {
		String url = "IMAGEURL";
		int value = 0;
		for (int i = 1; i <= 5; i++) {
			String q = "q" + i;
			if (request.getParameter(q).equals("opt1")) {
				value++;
			}
			if (value >= 2) {
				url = "mjRes.jpg";
			} else {
				url = "enjoy.jpg";
			}
		}
		return url;
	}

	@Override
	public String tmResult(HttpServletRequest request) {
		String url = "IMAGEURL";
		int value = 0;
		for (int i = 1; i <= 10; i++) {
			String q = "q" + i;

			if (request.getParameter(q).equals("opt1")) {
				value++;
			}
			if (value >= 6) {
				url = "tmRes.jpg";
			} else {
				url = "enjoy.jpg";
			}
		}
		return url;
	}

	@Override
	public String ydResult(HttpServletRequest request) {
		String url = "IMAGEURL";
		int value = 0;
		for (int i = 1; i <= 4; i++) {
			String q = "q" + i;
			if (request.getParameter(q).equals("opt1")) {
				value++;
			}
			if (value >= 2) {
				url = "ydRes.jpg";
			} else {
				url = "enjoy.jpg";
			}
		}
		return url;
	}

}
