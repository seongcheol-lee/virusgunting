package com.coderby.myapp.user.service;

import java.util.List;

import com.coderby.myapp.user.model.UserVO;

public interface IUserService {

	UserVO getUserInfo(int userId);

	int getUserCount();

	List<UserVO> getUserList();

	void signupUser(UserVO user);

	UserVO checkUser(UserVO user);

	UserVO signinUser(UserVO user);

	void withdrawalUser(UserVO user);
 
	UserVO checkWithdrawal(UserVO user);
}
