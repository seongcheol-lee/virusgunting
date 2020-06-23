package com.coderby.myapp.consult.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.coderby.myapp.consult.dao.IConsultRepository;
import com.coderby.myapp.consult.model.ConsultVO;
import com.coderby.myapp.consult.service.IConsultService;
import com.coderby.myapp.post.model.PostVO;
import com.coderby.myapp.user.model.UserVO;

@Controller
public class ConsultController {
	@Autowired
	IConsultService consultService;

	@RequestMapping(value = "/consult/list")
	public String getConsultList(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		UserVO login = (UserVO) session.getAttribute("member");

		if (login == null) {
			return "redirect:/user/signin";
		}
		model.addAttribute("consultList", consultService.getConsultList());
		return "/consult/list";

	}
	
	@RequestMapping(value = "/consult/insert", method = RequestMethod.POST)
	public String insertPost(ConsultVO consult, Model model) {
		System.out.println(consult);
		consultService.insertConsult(consult);
		return "redirect:/consult/list";
	}

}
