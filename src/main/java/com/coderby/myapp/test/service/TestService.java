package com.coderby.myapp.test.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.coderby.myapp.test.model.TestVO;

@Service
public class TestService implements ITestService {
	@Override
	public TestVO Result(HttpServletRequest request, String category) {
		TestVO test = new TestVO();

		if (category.equals("bbT")) {
			test = this.bbResult(request);
		} else if (category.equals("cjT")) {
			test = this.cjResult(request);
		} else if (category.equals("mjT")) {
			test = this.mjResult(request);
		} else if (category.equals("tmT")) {
			test = this.tmResult(request);
		} else if (category.equals("ydT")) {
			test = this.ydResult(request);
		}
		return test;
	}

	@Override
	public TestVO bbResult(HttpServletRequest request) {
		String url = "enjoy.jpg";
		String msg = "인생을 즐기세요!";
		String hospital = "";
		String type = null;
		int value = 0;
		for (int i = 1; i <= 5; i++) {
			String q = "q" + i;
			if (request.getParameter(q).equals("opt1")) {
				value++;
			}
		}
		if (value >= 2) {
			url = "bbRes.jpg";
			msg = "변비 비켜! 내일부터 아침은 요커트!";
			hospital = "항문외과";
			type = "변비";
		}
		TestVO test = new TestVO(url, type, msg, hospital);

		return test;
	}

	@Override
	public TestVO cjResult(HttpServletRequest request) {
		String url = "enjoy.jpg";
		String msg = "인생을 즐기세요!";
		String hospital = "";
		String type = null;
		int value = 0;
		for (int i = 1; i <= 6; i++) {
			String q = "q" + i;
			if (request.getParameter(q).equals("opt1")) {
				value++;
			}
		}
		if (value >= 3) {
			url = "cjRes.jpg";
			msg = "빨리 도넛방석 놔드려야겠어요!!";
			hospital = "항문외과";
			type = "치질";
		}
		TestVO test = new TestVO(url, type, msg, hospital);
		return test;
	}

	@Override
	public TestVO mjResult(HttpServletRequest request) {
		String url = "enjoy.jpg";
		String msg = "인생을 즐기세요!";
		String hospital = "";
		String type = null;
		int value = 0;
		for (int i = 1; i <= 5; i++) {
			String q = "q" + i;
			if (request.getParameter(q).equals("opt1")) {
				value++;
			}
		}
		if (value >= 2) {
			url = "mjRes.jpg";
			msg = "부끄러워 하지마세요!발가락 양말!!";
			hospital = "피부과";
			type = "무좀";
		}
		TestVO test = new TestVO(url, type, msg, hospital);
		return test;
	}

	@Override
	public TestVO tmResult(HttpServletRequest request) {
		String url = "enjoy.jpg";
		String msg = "인생을 즐기세요!";
		String hospital = "";
		String type = null;
		int value = 0;
		for (int i = 1; i <= 10; i++) {
			String q = "q" + i;
			if (request.getParameter(q).equals("opt1")) {
				value++;
			}
		}
		if (value >= 6) {
			url = "tmRes.jpg";
			msg = "탈모는 피부과에서!!";
			hospital = "피부과";
			type = "탈모";
		}
		TestVO test = new TestVO(url, type, msg, hospital);
		return test;
	}

	@Override
	public TestVO ydResult(HttpServletRequest request) {
		String url = "enjoy.jpg";
		String msg = "인생을 즐기세요!";
		String hospital = "";
		String type = null;
		int value = 0;
		for (int i = 1; i <= 4; i++) {
			String q = "q" + i;
			if (request.getParameter(q).equals("opt1")) {
				value++;
			}
		}
		if (value >= 2) {
			url = "ydRes.jpg";
			msg = "세수하세요! 두 번 하세요!";
			hospital = "피부과";
			type = "여드름";
		}
		TestVO test = new TestVO(url, type, msg, hospital);
		return test;
	}

}
