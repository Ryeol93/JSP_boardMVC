package com.mommy.app.community.vo;

public class CommunityCommentVO {

	 private int commentNum;
	 private int communityNum;
	 private String commentContent;
	 private int userNum;
	 private String commentDate;
	 
	 public CommunityCommentVO() {;}
	 
	 public int getCommentNum() {
			return commentNum;
		}

		public void setCommentNum(int commentNum) {
			this.commentNum = commentNum;
		}

		public int getCommunityNum() {
			return communityNum;
		}

		public void setCommunityNum(int communityNum) {
			this.communityNum = communityNum;
		}
		
		public int getUserNum() {
			return userNum;
		}

		public void setUserNum(int userNum) {
			this.userNum = userNum;
		}
	 
		public String getCommentContent() {
			return commentContent;
		}

		public void setCommentContent(String commentContent) {
			this.commentContent = commentContent;
		}
		
		public String getCommentDate() {
			return commentDate;
		}

		public void setCommentDate(String commentDate) {
			this.commentDate = commentDate;
		}
	 
	   
}
