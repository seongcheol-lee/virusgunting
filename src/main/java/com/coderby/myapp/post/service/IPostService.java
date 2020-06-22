package com.coderby.myapp.post.service;

import java.util.List;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coderby.myapp.post.model.PostVO; 
  
public interface IPostService { 
	
	int getPostCount();
	List<PostVO> getPostList();
	PostVO getPostInfo(int postId);
	void insertPost(PostVO post);
	void deletePost(int postid);
	void updatePost(PostVO post);
}
