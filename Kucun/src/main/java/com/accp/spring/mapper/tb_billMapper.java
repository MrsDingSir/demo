package com.accp.spring.mapper;

import java.util.List;

import com.accp.spring.entity.tb_bill;

public interface tb_billMapper {
	int insert(tb_bill bill);
	
	List<tb_bill> selectAll();
}
