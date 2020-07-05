package com.coderby.myapp.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coderby.myapp.user.dao.IUserRepository;
import com.coderby.myapp.user.model.UserVO;

@Service
public class UserService implements IUserService {
	@Autowired
	IUserRepository userRepository;

	@Override
	public UserVO getUserInfo(int userId) {  
		return userRepository.getUserInfo(userId);
	}

	@Override
	public int getUserCount() {
		return userRepository.getUserCount();
	}

	@Override
	public List<UserVO> getUserList() {
		return userRepository.getUserList();
	}

	@Override
	public void signupUser(UserVO user) {
		userRepository.signupUser(user);

	}

	@Override
	public UserVO checkUser(UserVO user) {
		return userRepository.checkUser(user);
	}

	@Override
	public UserVO signinUser(UserVO user) { 
		return userRepository.signinUser(user);

	}

	@Override
	public void withdrawalUser(UserVO user) {
		userRepository.withdrawalUser(user);
		
	}

	@Override
	public UserVO checkWithdrawal(UserVO user) { 
		return userRepository.checkWithdrawal(user);
	}

}
