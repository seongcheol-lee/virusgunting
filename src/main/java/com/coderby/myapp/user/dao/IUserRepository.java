package com.coderby.myapp.user.dao;

import java.util.List;

import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.coderby.myapp.user.model.UserVO; 

public interface IUserRepository {  
	UserVO getUserInfo(@Param("userId") int userId);
	int getUserCount();
	List<UserVO> getUserList();
	void signupUser(UserVO user);
	UserVO checkUser(UserVO user);
	UserVO signinUser(UserVO user);
	UserVO checkWithdrawal(UserVO user);
	void withdrawalUser(UserVO user);
}
