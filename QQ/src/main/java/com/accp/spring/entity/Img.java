package com.accp.spring.entity;

public class Img {
    private Integer imgId;

    private Integer imgType;

    private Integer masterId;

    private String path;


    public Integer getImgId() {
		return imgId;
	}

	public void setImgId(Integer imgId) {
		this.imgId = imgId;
	}

	public Integer getImgType() {
		return imgType;
	}

	public void setImgType(Integer imgType) {
		this.imgType = imgType;
	}

	public Integer getMasterId() {
		return masterId;
	}

	public void setMasterId(Integer masterId) {
		this.masterId = masterId;
	}

	public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path == null ? null : path.trim();
        
    }
}