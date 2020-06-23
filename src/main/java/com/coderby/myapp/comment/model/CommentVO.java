package com.coderby.myapp.comment.model;

 
public class CommentVO {
	private int commentId;
	private int userId;
	private int postId;
	private String commentContent;
	private String commentDateTime;
	private String commentUserName;
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getPostId() {
		return postId;
	}
	public void setPostId(int postId) {
		this.postId = postId;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public String getCommentDateTime() {
		return commentDateTime;
	}
	public void setCommentDateTime(String commentDateTime) {
		this.commentDateTime = commentDateTime;
	}
	public String getCommentUserName() {
		return commentUserName;
	}
	public void setCommentUserName(String commentUserName) {
		this.commentUserName = commentUserName;
	}
	@Override
	public String toString() {
		return "CommentVO [commentId=" + commentId + ", userId=" + userId + ", postId=" + postId + ", commentContent="
				+ commentContent + ", commentDateTime=" + commentDateTime + ", commentUserName=" + commentUserName
				+ "]";
	}
	
}
