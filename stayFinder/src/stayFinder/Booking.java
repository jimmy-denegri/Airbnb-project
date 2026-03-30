package stayFinder;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

/**
 * Represents a booking made by a guest for a specific listing.
 * Handles validation, pricing calculation, and booking state transitions.
 */
public class Booking {

    private String id;
    private Listing listing;
    private User guest;
    private LocalDate checkIn;
    private LocalDate checkOut;
    private int guestCount;
    private double totalPrice;
    private BookingStatus status;

    /**
     * Creates a new booking.
     *
     * @param id unique booking identifier
     * @param listing the listing being booked
     * @param guest the guest making the booking
     * @param checkIn check-in date
     * @param checkOut check-out date (must be after check-in)
     * @param guestCount number of guests staying
     * @throws IllegalArgumentException if validation fails
     */
    public Booking(String id, Listing listing, User guest,
                   LocalDate checkIn, LocalDate checkOut, int guestCount) {

        if (listing == null) {
            throw new IllegalArgumentException("Listing cannot be null");
        }

        if (checkIn == null || checkOut == null || !checkOut.isAfter(checkIn)) {
            throw new IllegalArgumentException("Check-out must be after check-in");
        }

        if (guestCount <= 0 || guestCount > listing.getMaxGuests()) {
            throw new IllegalArgumentException("Guest count exceeds listing capacity");
        }

        this.id = id;
        this.listing = listing;
        this.guest = guest;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.guestCount = guestCount;
        this.status = BookingStatus.PENDING;

        calculateTotalPrice();
    }

    /**
     * Calculates total price based on number of nights and listing price per night.
     */
    private void calculateTotalPrice() {
        long nights = ChronoUnit.DAYS.between(checkIn, checkOut);
        this.totalPrice = nights * listing.getPricePerNight();
    }

    /**
     * @return number of nights for this booking
     */
    public long getNights() {
        return ChronoUnit.DAYS.between(checkIn, checkOut);
    }

    /**
     * Confirms this booking.
     * @throws IllegalStateException if booking is not in PENDING state
     */
    public void confirm() {
        if (status != BookingStatus.PENDING) {
            throw new IllegalStateException("Only pending bookings can be confirmed");
        }
        status = BookingStatus.CONFIRMED;
    }

    /**
     * Cancels this booking.
     * @throws IllegalStateException if booking is already completed
     */
    public void cancel() {
        if (status == BookingStatus.COMPLETED) {
            throw new IllegalStateException("Completed bookings cannot be cancelled");
        }
        status = BookingStatus.CANCELLED;
    }

    /**
     * Marks this booking as completed.
     * @throws IllegalStateException if booking is not confirmed
     */
    public void complete() {
        if (status != BookingStatus.CONFIRMED) {
            throw new IllegalStateException("Only confirmed bookings can be completed");
        }
        status = BookingStatus.COMPLETED;
    }

    /** @return total price of the booking */
    public double getTotalPrice() { return totalPrice; }

    /** @return current booking status */
    public BookingStatus getStatus() { return status; }

    /** @return listing being booked */
    public Listing getListing() { return listing; }

    /** @return guest who made the booking */
    public User getGuest() { return guest; }
}

