package com.coderby.myapp.comment.controller;
 
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod; 

import com.coderby.myapp.comment.model.CommentVO;
import com.coderby.myapp.comment.service.ICommentService; 

@Controller
public class CommentController {
	@Autowired
	ICommentService commentService;

	@RequestMapping(value = "/comment/insert", method = RequestMethod.POST)
	public String insertComment(CommentVO comment, Model model) {
		commentService.insertComment(comment);
		int postId = comment.getPostId();
		return "redirect:/post/" + postId;
	}

	@RequestMapping(value = "/comment/delete", method = RequestMethod.POST)
	public String deleteComment(int commentId, int postId, Model model) {
		commentService.deleteComment(commentId);
		return "redirect:/post/" + postId;
	} 
}
