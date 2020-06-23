package com.coderby.myapp.comment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coderby.myapp.comment.dao.ICommentRepository;
import com.coderby.myapp.comment.model.CommentVO;

@Service
public class CommentService implements ICommentService {
	@Autowired
	ICommentRepository commentRepository;

	@Override
	public void insertComment(CommentVO comment) {
		commentRepository.insertComment(comment);

	}

	@Override
	public List<CommentVO> getCommentList(int postId) {
		 
		return commentRepository.getCommentList(postId);
	}

	@Override
	public void deleteComment(int commentId) {
		commentRepository.deleteComment(commentId);
		
	}

}
