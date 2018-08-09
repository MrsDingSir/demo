package com.accp.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.accp.spring.entity.Dynamicstate;
import com.accp.spring.mapper.DynamicstateMapper;

@Service
public class DynamicstateService {

	@Autowired
	public DynamicstateMapper dynamicstateMapper;
	
	public int insertShuo(Dynamicstate dynamicstate) {
		return this.dynamicstateMapper.insertShuo(dynamicstate);
	}
	
	public List<Dynamicstate> allDynamicdtate(int userId){
		return this.dynamicstateMapper.AllDynamicsate(userId,userId);
	}
}
