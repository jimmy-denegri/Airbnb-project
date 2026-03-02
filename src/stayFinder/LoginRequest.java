package stayFinder;

import java.util.Objects;

public class LoginRequest {

    private final String email;
    private final String password;

    public LoginRequest(String email, String password) {
        this.email = sanitizeRequired(email, "Email");
        this.password = sanitizeRequired(password, "Password");
        validate();
    }

    public void validate() {
        if (!isValidEmail(email)) {
            throw new IllegalArgumentException("Invalid email format.");
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
        return email.contains("@") && email.contains(".");
    }

    public String getEmail() { return email; }
    public String getPassword() { return password; }
}