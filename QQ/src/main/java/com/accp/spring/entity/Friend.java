package com.accp.spring.entity;

public class Friend {
		private int	friendId;
		private String 	friendName;
		private int	userId;
		private int	frienduserId;
		private int	groupingId;
		private String addTime;
		private Friend friend;
		public Friend getFriend() {
			return friend;
		}
		public void setFriend(Friend friend) {
			this.friend = friend;
		}
		public int getFriendId() {
			return friendId;
		}
		public void setFriendId(int friendId) {
			this.friendId = friendId;
		}
		public String getFriendName() {
			return friendName;
		}
		public void setFriendName(String friendName) {
			this.friendName = friendName;
		}
		public int getUserId() {
			return userId;
		}
		public void setUserId(int userId) {
			this.userId = userId;
		}
		public int getFrienduserId() {
			return frienduserId;
		}
		public void setFrienduserId(int frienduserId) {
			this.frienduserId = frienduserId;
		}
		public int getGroupingId() {
			return groupingId;
		}
		public void setGroupingId(int groupingId) {
			this.groupingId = groupingId;
		}
		public String getAddTime() {
			return addTime;
		}
		public void setAddTime(String addTime) {
			this.addTime = addTime;
		}
		
}
