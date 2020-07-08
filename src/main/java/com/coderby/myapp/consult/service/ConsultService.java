package com.coderby.myapp.consult.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coderby.myapp.consult.dao.IConsultRepository;
import com.coderby.myapp.consult.model.ConsultVO;
import com.coderby.myapp.post.model.PagingVO;

@Service
public class ConsultService implements IConsultService {
	@Autowired
	IConsultRepository consultRepsitory;

	@Override
	public List<ConsultVO> getConsultList() {
		return consultRepsitory.getConsultList();
	}

	@Override
	public void insertConsult(ConsultVO consult) {
		consultRepsitory.insertConsult(consult);

	}

	@Override
	public ConsultVO getConsultInfo(int consultId) { 
		return consultRepsitory.getConsultInfo(consultId);
	}

	@Override
	public int getConsultCount() {
		return consultRepsitory.getConsultCount();
	}

	@Override
	public List<ConsultVO> getConsultPage(PagingVO vo) {
		// TODO Auto-generated method stub
		return consultRepsitory.getConsultPage(vo);
	}

}
