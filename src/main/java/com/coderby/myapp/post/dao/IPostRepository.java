package com.coderby.myapp.post.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.coderby.myapp.post.model.PostVO;

@Repository
public interface IPostRepository {
	int getPostCount();

	List<PostVO> getPostList();

	PostVO getPostInfo(@Param("postId") int postId);

	void insertPost(PostVO post);

	void deletePost(@Param("postId") int postId);

	void updatePost(PostVO post);
}
