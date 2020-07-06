package com.coderby.myapp.post.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.coderby.myapp.post.model.DisLikeVO;
import com.coderby.myapp.post.model.LikeVO;
import com.coderby.myapp.post.model.PostVO;
import com.coderby.myapp.user.model.UserVO;

@Repository
public interface IPostRepository {
	int getPostCount();

	List<PostVO> getPostList();

	PostVO getPostInfo(@Param("postId") int postId);

	void insertPost(PostVO post);

	void deletePost(@Param("postId") int postId);

	void updatePost(PostVO post);

	void changelikePost(@Param("postId") int postId, @Param("like_count") int like_count);

	void insertlikePost(LikeVO like);

	int checklikePost(@Param("postId") int postId, @Param("userId") int userId);
	
	void deletelikePost(LikeVO like);
	
	void changedislikePost(@Param("postId")int postId, @Param("dislike_count")int dislike_count);

	void insertdislikePost(DisLikeVO dislike);

	int checkdislikePost(@Param("postId") int postId, @Param("userId") int userId);
	
	void deletedislikePost(DisLikeVO dislike);

	List<PostVO> getPostDiseaseList(String postDisease);

	List<PostVO> getPostSearchList(@Param("category") String category, @Param("text") String text);

	void upPostView(@Param("postId") int postId, @Param("views") int views);

	void respondedPost(PostVO post);

	

	

	
}
