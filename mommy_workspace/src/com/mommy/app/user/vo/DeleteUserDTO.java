package com.mommy.app.user.vo;

public class DeleteUserDTO {
	private String communityNum ;
	private String profileNum; 
	private String askNum;
	
	
	public String getCommunityNum() {
		return communityNum;
	}
	public void setCommunityNum(String communityNum) {
		this.communityNum = communityNum;
	}
	public String getProfileNum() {
		return profileNum;
	}
	public void setProfileNum(String profileNum) {
		this.profileNum = profileNum;
	}
	public String getAskNum() {
		return askNum;
	}
	public void setAskNum(String askNum) {
		this.askNum = askNum;
	}

}
