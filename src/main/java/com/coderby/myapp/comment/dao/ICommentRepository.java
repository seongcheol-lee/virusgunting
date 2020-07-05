package com.coderby.myapp.comment.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.coderby.myapp.comment.model.CommentVO;

@Repository
public interface ICommentRepository {

	void insertComment(CommentVO comment);

	List<CommentVO> getCommentList(int postId);

	void deleteComment(int commentId);

	int getCommentCount(@Param("postId") int postId);
}
