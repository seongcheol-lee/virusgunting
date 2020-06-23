package com.coderby.myapp.test.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

public interface ITestService { 
 
	String bbResult(HttpServletRequest request);

	String cjResult(HttpServletRequest request);

	String mjResult(HttpServletRequest request);

	String tmResult(HttpServletRequest request);

	String ydResult(HttpServletRequest request);
 
}
