package com.coderby.myapp.consult.service;

import java.util.List;


import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coderby.myapp.consult.model.ConsultVO;
import com.coderby.myapp.post.model.DisLikeVO;
import com.coderby.myapp.post.model.LikeVO;
import com.coderby.myapp.post.model.PagingVO;
import com.coderby.myapp.post.model.PostVO; 
  
public interface IConsultService {

	List<ConsultVO> getConsultList();

	void insertConsult(ConsultVO consult);

	ConsultVO getConsultInfo(int consultId);

	int getConsultCount();

	List<ConsultVO> getConsultPage(PagingVO vo); 
	 
	
}
