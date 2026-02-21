package stayFinder;

import java.time.LocalDateTime;
import java.util.Set;

public class user {
	private int id; 
	private String name;
	private String email;
	private String passwordHash;
	private Set<UserRole> Role;
	private LocalDateTime createdAt;
	
	public user(int id, String name, String email, String passwordHash, Set Role, LocalDateTime createdAt) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.passwordHash = passwordHash;
		this.Role = Role;
		this.createdAt = createdAt;
	}
	
	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPasswordHash() {
		return passwordHash;
	}

	public Set<UserRole> getRole() {
		return Role;
	}

	public LocalDateTime getCreatedAt() {
		return createdAt;
	}

	public boolean isHost() {
		return Role.contains(UserRole.HOST);
	}
	
	public boolean isAdmin() {
		return Role.contains(UserRole.ADMIN);
	}
	
	public void changePassword(String oldPwd, String newPwd) {
		return; 
	}
}