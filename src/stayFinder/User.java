package stayFinder;

import java.time.LocalDateTime;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

public class User {

    private int id;
    private String name;
    private String email;
    private String passwordHash;
    private Set<UserRole> roles;
    private LocalDateTime createdAt;

    public User(int id, String name, String email, String passwordHash, Set<UserRole> roles, LocalDateTime createdAt) {
        validateName(name);
        validateEmail(email);
        validatePasswordHash(passwordHash);

        this.id = id;
        this.name = name.trim();
        this.email = email.trim().toLowerCase();
        this.passwordHash = passwordHash;
        this.roles = roles == null ? new HashSet<>() : new HashSet<>(roles);
        this.createdAt = createdAt == null ? LocalDateTime.now() : createdAt;
    }

    public boolean isHost() {
        return roles.contains(UserRole.HOST);
    }

    public boolean isAdmin() {
        return roles.contains(UserRole.ADMIN);
    }

    public boolean hasRole(UserRole role) {
        return role != null && roles.contains(role);
    }

    public void addRole(UserRole role) {
        if (role == null) {
            throw new IllegalArgumentException("Role cannot be null.");
        }
        roles.add(role);
    }

    public void removeRole(UserRole role) {
        if (role == null) {
            throw new IllegalArgumentException("Role cannot be null.");
        }
        roles.remove(role);
    }

    public void changePassword(String oldPwdHash, String newPwdHash) {
        if (!Objects.equals(this.passwordHash, oldPwdHash)) {
            throw new IllegalArgumentException("Old password does not match.");
        }
        validatePasswordHash(newPwdHash);
        this.passwordHash = newPwdHash;
    }

    public void updateName(String newName) {
        validateName(newName);
        this.name = newName.trim();
    }

    public void updateEmail(String newEmail) {
        validateEmail(newEmail);
        this.email = newEmail.trim().toLowerCase();
    }

    private void validateName(String name) {
        if (name == null || name.trim().isEmpty()) {
            throw new IllegalArgumentException("Name cannot be empty.");
        }
    }

    private void validateEmail(String email) {
        if (email == null || email.trim().isEmpty() || !email.contains("@")) {
            throw new IllegalArgumentException("Email is invalid.");
        }
    }

    private void validatePasswordHash(String passwordHash) {
        if (passwordHash == null || passwordHash.trim().isEmpty()) {
            throw new IllegalArgumentException("Password hash cannot be empty.");
        }
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

    public Set<UserRole> getRoles() {
        return Collections.unmodifiableSet(roles);
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }
}