package com.coderby.myapp.post.model;

public class DisLikeVO {
	private int postId;
	private int userId;
	@Override
	public String toString() {
		return "DisLikeVO [postId=" + postId + ", userId=" + userId + "]";
	}
	public int getPostId() {
		return postId;
	}
	public void setPostId(int postId) {
		this.postId = postId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	} 
}
