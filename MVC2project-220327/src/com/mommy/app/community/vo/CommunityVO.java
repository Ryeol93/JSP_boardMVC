package com.mommy.app.community.vo;

public class CommunityVO {
	private int communityNum;
	private String communityTitle;
	private String communityContent;
	private int communityCategory;
	private int userNum;
	private String boardDate;
	
	
	public CommunityVO() {;}

	public int getCommunityNum() {
		return communityNum;
	}

	public void setCommunityNum(int communityNum) {
		this.communityNum = communityNum;
	}

	public String getCommunityTitle() {
		return communityTitle;
	}

	public void setCommunityTitle(String communityTitle) {
		this.communityTitle = communityTitle;
	}

	public String getCommunityContent() {
		return communityContent;
	}

	public void setCommunityContent(String communityContent) {
		this.communityContent = communityContent;
	}

	public int getCommunityCategory() {
		return communityCategory;
	}

	public void setCommunityCategory(int communityCategory) {
		this.communityCategory = communityCategory;
	}
	
	public int getUserNum() {
		return userNum;
	}

	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}

	public String getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}
	
	
	
}
