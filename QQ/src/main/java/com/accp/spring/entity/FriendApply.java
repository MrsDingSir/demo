package com.accp.spring.entity;

public class FriendApply {
			private int	applyId;
			private String 	remark;
			private int	applyuserId;
			private int	pasvuserId;
			private String	pasvuserName;
			private int	isOk;
			private String	applyTime;
			private int groupingId;
			public int getGroupingId() {
				return groupingId;
			}
			public void setGroupingId(int groupingId) {
				this.groupingId = groupingId;
			}
			public int getApplyId() {
				return applyId;
			}
			public void setApplyId(int applyId) {
				this.applyId = applyId;
			}
			public String getRemark() {
				return remark;
			}
			public void setRemark(String remark) {
				this.remark = remark;
			}
			public int getApplyuserId() {
				return applyuserId;
			}
			public void setApplyuserId(int applyuserId) {
				this.applyuserId = applyuserId;
			}
			public int getPasvuserId() {
				return pasvuserId;
			}
			public void setPasvuserId(int pasvuserId) {
				this.pasvuserId = pasvuserId;
			}
			public String getPasvuserName() {
				return pasvuserName;
			}
			public void setPasvuserName(String pasvuserName) {
				this.pasvuserName = pasvuserName;
			}
			public int getIsOk() {
				return isOk;
			}
			public void setIsOk(int isOk) {
				this.isOk = isOk;
			}
			public String getApplyTime() {
				return applyTime;
			}
			public void setApplyTime(String applyTime) {
				this.applyTime = applyTime;
			}
			

}
