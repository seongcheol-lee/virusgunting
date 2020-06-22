package com.coderby.myapp.post.service;

import java.util.List;

import java.util.Map;

import javax.inject.Qualifier;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coderby.myapp.post.dao.IPostRepository;
import com.coderby.myapp.post.model.PostVO;
 
@Service
public class PostService implements IPostService{ 
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
}
