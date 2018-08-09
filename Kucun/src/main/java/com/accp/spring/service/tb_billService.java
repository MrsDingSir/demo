package com.accp.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.accp.spring.entity.tb_bill;
import com.accp.spring.mapper.tb_billMapper;
@Service
public class tb_billService {
	@Autowired
	private tb_billMapper billMapper;
	public int insert(tb_bill bill) {
		return this.billMapper.insert(bill);
	}
	
	public List<tb_bill> selectAll(){
		return this.billMapper.selectAll();
	}
}
