package com.coderby.myapp.test.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.coderby.myapp.test.model.TestVO;
import com.coderby.myapp.test.service.ITestService;

@Controller
public class TestController {
	@Autowired
	ITestService testService;

	@RequestMapping(value = "/test/start")
	public String startTest(Model model) {
		return "/test/start";
	}

	@RequestMapping(value = "/test/{category}")
	public String conductTest(@PathVariable String category, Model model) {
		model.addAttribute("category", "category");
		return "/test/" + category;
	}

	@RequestMapping(value = "/test/{category}/result")
	public String resultTest(@PathVariable String category, HttpServletRequest request, Model model) {
		TestVO test = testService.Result(request, category);
		System.out.println(test);
		model.addAttribute("test", test);
		return "/test/result";
	}

	
	
	
//	@RequestMapping(value = "/test/bbT")
//	public String startbbTest(Model model) {
//		return "/test/bbT";
//	}

//	@RequestMapping(value = "/test/bbT/result")
//	public String resultbbTest(HttpServletRequest request, Model model) {
//		String url = testService.bbResult(request);
//		model.addAttribute("url", url);
//		if (url.equals("enjoy.jpg")) {
//			model.addAttribute("msg", "인생을 즐기세요!");
//			model.addAttribute("type", "");
//		} else {
//			model.addAttribute("msg", "변비비켜! 내일부터 아침은 요거트!!");
//			model.addAttribute("type", "변비 ");
//			model.addAttribute("category", "항문외과");
//		}
//		return "/test/result";
//	}

//	@RequestMapping(value = "/test/cjT")
//	public String startcjTest(Model model) {
//		return "/test/cjT";
//	}

//	@RequestMapping(value = "/test/cjT/result")
//	public String resultcjTest(HttpServletRequest request, Model model) {
//		String url = testService.cjResult(request);
//		model.addAttribute("url", url);
//		if (url.equals("enjoy.jpg")) {
//			model.addAttribute("msg", "인생을 즐기세요!");
//			model.addAttribute("type", "");
//
//		} else {
//			model.addAttribute("msg", "빨리 도넛방석 놔드려야겠어요!!");
//			model.addAttribute("type", "치질 ");
//			model.addAttribute("category", "항문외과");
//
//		}
//		return "/test/result";
//	}

//	@RequestMapping(value = "/test/mjT")
//	public String startmjTest(Model model) {
//		return "/test/mjT";
//	}

//	@RequestMapping(value = "/test/mjT/result")
//	public String resultmjTest(HttpServletRequest request, Model model) {
//		String url = testService.mjResult(request);
//		model.addAttribute("url", url);
//		if (url.equals("enjoy.jpg")) {
//			model.addAttribute("msg", "인생을 즐기세요!");
//			model.addAttribute("type", "");
//
//		} else {
//			model.addAttribute("msg", "부끄러워 하지마세요!발가락 양말!!");
//			model.addAttribute("type", "무좀 ");
//			model.addAttribute("category", "피부과");
//
//		}
//		return "/test/result";
//	}

//	@RequestMapping(value = "/test/tmT")
//	public String starttmTest(Model model) {
//		return "/test/tmT";
//	}

//	@RequestMapping(value = "/test/tmT/result")
//	public String resulttmTest(HttpServletRequest request, Model model) {
//		String url = testService.tmResult(request);
//		model.addAttribute("url", url);
//		if (url.equals("enjoy.jpg")) {
//			model.addAttribute("msg", "인생을 즐기세요!");
//			model.addAttribute("type", "");
//
//		} else {
//			model.addAttribute("msg", "탈모는 피부과에서!!");
//			model.addAttribute("type", "탈모 ");
//			model.addAttribute("category", "피부과");
//		}
//		return "/test/result";
//	}

//	@RequestMapping(value = "/test/ydT")
//	public String startydTest(Model model) {
//		return "/test/ydT";
//	}

//	@RequestMapping(value = "/test/ydT/result")
//	public String resultydTest(HttpServletRequest request, Model model) {
//		String url = testService.ydResult(request);
//		model.addAttribute("url", url);
//		if (url.equals("enjoy.jpg")) {
//			model.addAttribute("msg", "인생을 즐기세요!");
//			model.addAttribute("type", "");
//
//		} else {
//			model.addAttribute("msg", "세수하세요! 두 번 하세요!");
//			model.addAttribute("type", "여드름 ");
//			model.addAttribute("category", "피부과");
//		}
//		return "/test/result";
//	}
}
