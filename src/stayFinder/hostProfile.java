package stayFinder;

import java.time.LocalDateTime;
import java.util.Set;
	
	public class hostProfile extends user{
		
		private String bio;
		private int phone;
		private boolean verified;
		
		public hostProfile(int id, String name, String email, String passwordHash, Set Role, LocalDateTime createdAt, String bio, int phone, boolean verified) {
			super(id, name, email, passwordHash, Role, createdAt);
			this.bio = bio;
			this.phone = phone;
			this.verified = verified;
		}

	
	public void verify() {
		return;
	}
	
	public void updateBio(String bio) {
		return;
	}
	
	public void updatePhone(int phone) {
		return;
	}


	public String getBio() {
		return bio;
	}


	public int getPhone() {
		return phone;
	}


	public boolean isVerified() {
		return verified;
	}
}