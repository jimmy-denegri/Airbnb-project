package stayFinder;

import java.util.Objects;

public class SignUpRequest {

    private final String fullName;
    private final String email;
    private final String password;

    public SignUpRequest(String fullName, String email, String password) {
        this.fullName = sanitizeRequired(fullName, "Full name");
        this.email = sanitizeRequired(email, "Email");
        this.password = sanitizeRequired(password, "Password");

        validate();
    }

    public void validate() {
        if (!isValidEmail(email)) {
            throw new IllegalArgumentException("Invalid email format.");
        }
        if (!isValidPassword(password)) {
            throw new IllegalArgumentException("Password must be at least 8 characters and contain a letter and a number.");
        }
    }

    private static String sanitizeRequired(String value, String fieldName) {
        Objects.requireNonNull(value, fieldName + " cannot be null");
        String trimmed = value.trim();
        if (trimmed.isEmpty()) {
            throw new IllegalArgumentException(fieldName + " cannot be empty.");
        }
        return trimmed;
    }

    private static boolean isValidEmail(String email) {
        // Simple check (good enough for many projects)
        return email.contains("@") && email.contains(".");
    }

    private static boolean isValidPassword(String password) {
        if (password.length() < 8) return false;

        boolean hasLetter = false;
        boolean hasDigit = false;

        for (int i = 0; i < password.length(); i++) {
            char c = password.charAt(i);
            if (Character.isLetter(c)) hasLetter = true;
            if (Character.isDigit(c)) hasDigit = true;
        }
        return hasLetter && hasDigit;
    }

    public String getFullName() { return fullName; }
    public String getEmail() { return email; }
    public String getPassword() { return password; }
    
    
}