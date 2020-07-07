package com.coderby.myapp.test.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.coderby.myapp.test.model.TestVO;

public interface ITestService { 
 
	TestVO bbResult(HttpServletRequest request);

	TestVO cjResult(HttpServletRequest request);

	TestVO mjResult(HttpServletRequest request);

	TestVO tmResult(HttpServletRequest request);

	TestVO ydResult(HttpServletRequest request);

	TestVO Result(HttpServletRequest request,String category);
 
}
