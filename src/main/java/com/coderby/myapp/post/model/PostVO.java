package com.coderby.myapp.post.model;

import java.sql.Date;

public class PostVO {
	private int postId;
	private int userId;
	private String postTitle;
	private String postContent;
	private Date postDateTime;
	private String postDisease;
	private String postSubject;
	private int postLikes;
	private int postDisLikes;
	private int postViews;
	private String postResponded;
	private String postUserName;
	private int commentCount;

	@Override
	public String toString() {
		return "PostVO [postId=" + postId + ", userId=" + userId + ", postTitle=" + postTitle + ", postContent="
				+ postContent + ", postDateTime=" + postDateTime + ", postDisease=" + postDisease + ", postSubject="
				+ postSubject + ", postLikes=" + postLikes + ", postDisLikes=" + postDisLikes + ", postViews="
				+ postViews + ", postResponded=" + postResponded + ", postUserName=" + postUserName + ", commentCount="
				+ commentCount + "]";
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

	public String getPostTitle() {
		return postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public String getPostContent() {
		return postContent;
	}

	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}

	public Date getPostDateTime() {
		return postDateTime;
	}

	public void setPostDateTime(Date postDateTime) {
		this.postDateTime = postDateTime;
	}

	public String getPostDisease() {
		return postDisease;
	}

	public void setPostDisease(String postDisease) {
		this.postDisease = postDisease;
	}

	public String getPostSubject() {
		return postSubject;
	}

	public void setPostSubject(String postSubject) {
		this.postSubject = postSubject;
	}

	public int getPostLikes() {
		return postLikes;
	}

	public void setPostLikes(int postLikes) {
		this.postLikes = postLikes;
	}

	public int getPostDisLikes() {
		return postDisLikes;
	}

	public void setPostDisLikes(int postDisLikes) {
		this.postDisLikes = postDisLikes;
	}

	public int getPostViews() {
		return postViews;
	}

	public void setPostViews(int postViews) {
		this.postViews = postViews;
	}

	public String getPostResponded() {
		return postResponded;
	}

	public void setPostResponded(String postResponded) {
		this.postResponded = postResponded;
	}

	public String getPostUserName() {
		return postUserName;
	}

	public void setPostUserName(String postUserName) {
		this.postUserName = postUserName;
	}

	public int getCommentCount() {
		return commentCount;
	}

	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}

}
