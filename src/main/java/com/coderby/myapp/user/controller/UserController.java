package com.coderby.myapp.user.controller;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.coderby.myapp.HomeController;
import com.coderby.myapp.user.model.UserVO;
import com.coderby.myapp.user.service.IUserService;

@Controller
public class UserController {
	@Autowired
	IUserService userService;

	@RequestMapping(value = "/user/signup", method = RequestMethod.GET)
	public String userSignup(Model model) {
		return "/user/signup";
	}

	@RequestMapping(value = "/user/signup", method = RequestMethod.POST)
	public String userSignup(UserVO user, RedirectAttributes rttr) {
		UserVO check = userService.checkUser(user);

		if (check != null) {
			rttr.addFlashAttribute("msg", "signupfail");
			return "redirect:/user/signup";
		} else if (check == null) {
			userService.signupUser(user);
			rttr.addFlashAttribute("msg", "signupsuccess");
		}
		return "redirect:/";

	}

	@RequestMapping(value = "/user/signin", method = RequestMethod.GET)
	public String userSignin(Model model) {
		return "/user/signin";
	}

	@RequestMapping(value = "/user/signin", method = RequestMethod.POST)
	public String userSignin(UserVO user, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		String referer = req.getHeader("Referer");
		HttpSession session = req.getSession();
		UserVO login = userService.signinUser(user);
		if (login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", "loginfail");
		} else {
			session.setAttribute("member", login);
			rttr.addFlashAttribute("msg", "loginsuccess");
		}
		return "redirect:/";
	}

	@RequestMapping(value = "/user/signout", method = RequestMethod.GET)
	public String logout(HttpSession session, RedirectAttributes rttr) throws Exception {
		rttr.addFlashAttribute("msg", "logout");
		session.invalidate();

		return "redirect:/";
	}

	@RequestMapping(value = "/user/withdrawal", method = RequestMethod.GET)
	public String userWithdrawal(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		UserVO login = (UserVO) session.getAttribute("member");

		if (login == null) {
			return "redirect:/user/signin";
		}
		return "/user/withdrawal";
	}

	@RequestMapping(value = "/user/withdrawal", method = RequestMethod.POST)
	public String userWithdrawal(UserVO user, HttpServletRequest req, RedirectAttributes rttr) {

		HttpSession session = req.getSession();
		UserVO check = userService.checkWithdrawal(user);
//		탈퇴 성공
		if (check != null) {
			userService.withdrawalUser(user);
			session.invalidate();
			rttr.addFlashAttribute("msg", "withdrawalsuccess");
			return "redirect:/";
		}
//		탈퇴 실패
		else if (check == null) {
			rttr.addFlashAttribute("msg", "withdrawalfail");
			return "redirect:/user/withdrawal";
		}
		return "redirect:/user/withdrawal";
	}

}
