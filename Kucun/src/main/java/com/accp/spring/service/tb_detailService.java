package com.accp.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.accp.spring.entity.tb_bill;
import com.accp.spring.entity.tb_detail;
import com.accp.spring.mapper.tb_detailMapper;
@Service
public class tb_detailService {
	@Autowired
	private tb_detailMapper detailMapper;
	public int insert(tb_detail detail) {
		return this.detailMapper.insert(detail);
				
	}
	
	
}
