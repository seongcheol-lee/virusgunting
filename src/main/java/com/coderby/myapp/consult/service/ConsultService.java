package com.coderby.myapp.consult.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coderby.myapp.consult.dao.IConsultRepository;
import com.coderby.myapp.consult.model.ConsultVO;

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

}
