package com.mommy.app.chat.vo;

import com.mommy.app.community.vo.CommunityVO;

public class ChatDTO {
	
	private int chatNum;
	private int userNum;
	private int sendUserName; /*나에게 요청한 사람들. 로그인세션  + 이름*/
	private int chatStatus;
	private String chatTitle;
	private String chatContent;
	private String chatDate;
	private String profilePicture;
	
	public ChatDTO() {;}

	public ChatDTO(ChatVO chatVO) {
		super();
		this.chatNum = chatVO.getChatNum();
		this.userNum = chatVO.getUserNum();
		this.sendUserName = chatVO.getSendUserName();
		this.chatStatus = chatVO.getChatStatus();
		this.chatTitle = chatVO.getChatTitle();
		this.chatContent = chatVO.getChatContent();
		this.chatDate = chatVO.getChatDate();
	}
	
	
	public int getChatNum() {
		return chatNum;
	}

	public void setChatNum(int chatNum) {
		this.chatNum = chatNum;
	}

	public int getUserNum() {
		return userNum;
	}

	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}

	public int getSendUserName() {
		return sendUserName;
	}

	public void setSendUserName(int sendUserName) {
		this.sendUserName = sendUserName;
	}

	public String getChatTitle() {
		return chatTitle;
	}

	public void setChatTitle(String chatTitle) {
		this.chatTitle = chatTitle;
	}

	public String getChatContent() {
		return chatContent;
	}

	public void setChatContent(String chatContent) {
		this.chatContent = chatContent;
	}

	public String getChatDate() {
		return chatDate;
	}

	public void setChatDate(String chatDate) {
		this.chatDate = chatDate;
	}

	public int getChatStatus() {
		return chatStatus;
	}

	public void setChatStatus(int chatStatus) {
		this.chatStatus = chatStatus;
	}

	public String getProfilePicture() {
		return profilePicture;
	}

	public void setProfilePicture(String profilePicture) {
		this.profilePicture = profilePicture;
	}
	

}
