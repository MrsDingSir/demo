package com.accp.spring.entity;

import java.util.List;

public class AllSpace {
	
	private List<User> users;
	private Space space;
	private List<Img> img;
	private Friend friend;
	private Dynamicstate dynamicstate;
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}

	public Space getSpace() {
		return space;
	}
	public void setSpace(Space space) {
		this.space = space;
	}
	
	public List<Img> getImg() {
		return img;
	}
	public void setImg(List<Img> img) {
		this.img = img;
	}
	public Friend getFriend() {
		return friend;
	}
	public void setFriend(Friend friend) {
		this.friend = friend;
	}
	public Dynamicstate getDynamicstate() {
		return dynamicstate;
	}
	public void setDynamicstate(Dynamicstate dynamicstate) {
		this.dynamicstate = dynamicstate;
	}
	
	
	
}
