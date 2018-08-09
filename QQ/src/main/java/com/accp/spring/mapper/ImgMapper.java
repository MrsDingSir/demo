package com.accp.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.accp.spring.entity.Img;

public interface ImgMapper {

	int shuoImg(Img img);
	
	List<Img> dynamicstateImg(@Param("masterId")int masterId);
	
	
}
