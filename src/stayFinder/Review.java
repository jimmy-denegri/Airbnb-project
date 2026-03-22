package stayFinder;

import java.time.LocalDateTime;
import java.util.Objects;

public class Review {
	
	private static final int MIN_RATING = 1;
	private static final int MAX_RATING = 5;

    private final int id;
    private final Booking booking;
    private final User author;
    private final Listing listing;
    private final ReviewType type;
    private int rating;
    private String comment;
    private final LocalDateTime createdAt;

    public Review(int id, Booking booking, User author, Listing listing, ReviewType type, int rating, String comment) {

        this.id = id;
        this.booking = Objects.requireNonNull(booking);
        this.author = Objects.requireNonNull(author);
        this.listing = Objects.requireNonNull(listing);
        this.type = Objects.requireNonNull(type);
        this.createdAt = LocalDateTime.now();

        setRating(rating);
        setComment(comment);
    }


	private boolean isValidRating(int rating) {
	    return rating >= MIN_RATING && rating <= MAX_RATING;
	}

    public void updateRating(int rating) {
        if (!isValidRating(rating)) {
            throw new IllegalArgumentException("Rating must be between 1 and 5.");
        }
        this.rating = rating;
    }

    public void updateComment(String comment) {
        if (comment == null || comment.trim().isEmpty()) {
            throw new IllegalArgumentException("Comment cannot be empty.");
        }
        this.comment = comment.trim();
    }

    // Private setters for constructor validation
    private void setRating(int rating) {
        updateRating(rating);
    }

    private void setComment(String comment) {
        updateComment(comment);
    }

    public int getId() {
        return id;
    }

    public Booking getBooking() {
        return booking;
    }

    public User getAuthor() {
        return author;
    }

    public Listing getListing() {
        return listing;
    }

    public ReviewType getType() {
        return type;
    }

    public int getRating() {
        return rating;
    }

    public String getComment() {
        return comment;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }
}
