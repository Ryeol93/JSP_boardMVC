package com.mommy.app.service.vo;

public class FavoriteDTO {

	private int favoriteNum;
	 private int userNum;
	 private int profileNum;
	 private String profilePicture;
	 
	 public FavoriteDTO() {;}
	 
	 public int getProfileNum() {
			return profileNum;
		}
		public void setProfileNum(int profileNum) {
			this.profileNum = profileNum;
		}
		public int getFavoriteNum() {
			return favoriteNum;
		}
		public void setFavoriteNum(int favoriteNum) {
			this.favoriteNum = favoriteNum;
		}
		public int getUserNum() {
			return userNum;
		}
		public void setUserNum(int userNum) {
			this.userNum = userNum;
		}

		public String getProfilePicture() {
			return profilePicture;
		}

		public void setProfilePicture(String profilePicture) {
			this.profilePicture = profilePicture;
		}

}
