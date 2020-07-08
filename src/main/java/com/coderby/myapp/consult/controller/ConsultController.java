package com.coderby.myapp.consult.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.coderby.myapp.consult.model.ConsultVO;
import com.coderby.myapp.consult.service.IConsultService;
import com.coderby.myapp.post.model.PagingVO;
import com.coderby.myapp.post.model.PostVO;
import com.coderby.myapp.user.model.UserVO;

@Controller
public class ConsultController {
	@Autowired
	IConsultService consultService;

	@RequestMapping(value = "/consult/list")
	public String getConsultList(PagingVO vo, Model model,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage, HttpServletRequest req,
			RedirectAttributes rttr) {
		HttpSession session = req.getSession();
		
		UserVO login = (UserVO) session.getAttribute("member");
		 
		if (login == null) {
			rttr.addFlashAttribute("msg", "loginplease");
			return "redirect:/user/signin";
		}
		
		int total = consultService.getConsultCount();

		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "5";
		}

		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		List<ConsultVO> consultList = consultService.getConsultPage(vo);
 
		model.addAttribute("paging", vo);
		model.addAttribute("consultList", consultList);
		return "/consult/list";
	}

	@RequestMapping(value = "/consult/{consultId}")
	public String getConsultInfo(@PathVariable int consultId, Model model) {
		ConsultVO consult = consultService.getConsultInfo(consultId);
		model.addAttribute("consult", consult);
		return "/consult/view";
	}

	@RequestMapping(value = "/consult/insert", method = RequestMethod.POST)
	public String insertConsult(ConsultVO consult, Model model) {
		consultService.insertConsult(consult);
		return "redirect:/consult/list";
	}

}
