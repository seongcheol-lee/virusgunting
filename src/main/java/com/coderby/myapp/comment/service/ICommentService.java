package com.coderby.myapp.comment.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.coderby.myapp.comment.model.CommentVO;
import com.coderby.myapp.post.model.PagingVO;
@Service
public interface ICommentService {

	void insertComment(CommentVO comment);

	List<CommentVO> getCommentList(int postId);

	void deleteComment(int commentId);

	List<CommentVO> getCommentPage(int start, int end, int postId);
 
}
