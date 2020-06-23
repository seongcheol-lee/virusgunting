package com.coderby.myapp.post.service;

import java.util.List;

import java.util.Map;

import javax.inject.Qualifier;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coderby.myapp.post.dao.IPostRepository;
import com.coderby.myapp.post.model.DisLikeVO;
import com.coderby.myapp.post.model.LikeVO;
import com.coderby.myapp.post.model.PostVO;

@Service
public class PostService implements IPostService {
	@Autowired
	IPostRepository postRepository;

	@Override
	public int getPostCount() {
		return postRepository.getPostCount();
	}

	@Override
	public List<PostVO> getPostList() {
		return postRepository.getPostList();
	}

	@Override
	public PostVO getPostInfo(int postId) {
		return postRepository.getPostInfo(postId);
	}

	@Override
	public void insertPost(PostVO post) {
		postRepository.insertPost(post);
	}

	@Override
	public void deletePost(int postid) {
		postRepository.deletePost(postid);
	}

	@Override
	public void updatePost(PostVO post) {
		postRepository.updatePost(post);
	}

	@Override
	public void pluslikePost(int postId, int postLikes) {
		postRepository.pluslikePost(postId, postLikes);

	}

	@Override
	public void insertlikePost(LikeVO like) {
		postRepository.insertlikePost(like);
	}

	@Override
	public int checklikePost(int postId, int userId) {
		return postRepository.checklikePost(postId, userId);
	}

	@Override
	public void plusdislikePost(int postId, int postDisLikes) {
		postRepository.plusdislikePost(postId, postDisLikes);
	}

	@Override
	public void insertdislikePost(DisLikeVO dislike) {
		postRepository.insertdislikePost(dislike);

	}

	@Override
	public int checkdislikePost(int postId, int userId) {
		return postRepository.checkdislikePost(postId, userId);
	}

	@Override
	public List<PostVO> getPostDiseaseList(String postDisease) {

		return postRepository.getPostDiseaseList(postDisease);
	}

	@Override
	public List<PostVO> getPostSearchList(String category, String text) {
		return postRepository.getPostSearchList(category, text);
	}

	@Override
	public void upPostView(int postId, int views) {
		postRepository.upPostView(postId, views);
	}

	@Override
	public void respondedPost(PostVO post) {
		postRepository.respondedPost(post);
		
	}

}
