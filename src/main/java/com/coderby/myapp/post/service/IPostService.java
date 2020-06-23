package com.coderby.myapp.post.service;

import java.util.List;


import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coderby.myapp.post.model.DisLikeVO;
import com.coderby.myapp.post.model.LikeVO;
import com.coderby.myapp.post.model.PostVO; 
  
public interface IPostService { 
	
	int getPostCount();
	List<PostVO> getPostList();
	List<PostVO> getPostDiseaseList(String postDisease);
	PostVO getPostInfo(int postId);
	void insertPost(PostVO post);
	void deletePost(int postid);
	void updatePost(PostVO post);
	
	
	void pluslikePost(int postId, int postLikes);
	void insertlikePost(LikeVO like);
	int checklikePost(int postId,int userId);
	
	void plusdislikePost(int postId, int postDisLikes);
	void insertdislikePost(DisLikeVO Dislike);
	int checkdislikePost(int postId,int userId);
	List<PostVO> getPostSearchList(String category, String text);
	void upPostView(int postId, int views);
	void respondedPost(PostVO post);
	
}
