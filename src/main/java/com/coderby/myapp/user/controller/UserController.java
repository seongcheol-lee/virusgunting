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
			rttr.addFlashAttribute("msg", false);
			return "redirect:/user/signup";
		} else if (check == null) {
			userService.signupUser(user);
		}
		return "redirect:/";

	}

	@RequestMapping(value = "/user/signin", method = RequestMethod.GET)
	public String userSignin(Model model) {
		return "/user/signin";
	}

	@RequestMapping(value = "/user/signin", method = RequestMethod.POST)
	public String userSignin(UserVO user, HttpServletRequest req, RedirectAttributes rttr) throws Exception {

		HttpSession session = req.getSession();
		UserVO login = userService.signinUser(user);
		if (login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:/user/signin";

		} else {
			session.setAttribute("member", login);
			return "redirect:/";
		}

	}

	@RequestMapping(value = "/user/signout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {

		session.invalidate();

		return "redirect:/";
	}

}
