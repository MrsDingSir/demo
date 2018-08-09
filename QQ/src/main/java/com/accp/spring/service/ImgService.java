package com.accp.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.accp.spring.entity.Img;
import com.accp.spring.mapper.ImgMapper;

@Service
public class ImgService {

	@Autowired
	public ImgMapper imgMapper;
	
	public int shuoImg(Img img) {
		return this.imgMapper.shuoImg(img);
	}
	
	public List<Img> dynamicstateImg(int masterId){
		return this.imgMapper.dynamicstateImg(masterId);
	}
}
