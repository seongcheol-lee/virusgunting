package com.coderby.myapp.comment.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.coderby.myapp.comment.model.CommentVO;
import com.coderby.myapp.post.model.PagingVO;

@Repository
public interface ICommentRepository {

	void insertComment(CommentVO comment);

	List<CommentVO> getCommentList(int postId);

	void deleteComment(int commentId);

	int getCommentCount(@Param("postId") int postId);

	List<CommentVO> getCommentPage(@Param("start") int start, @Param("end") int end, @Param("postId") int postId);
}
