package stayFinder;

import java.time.LocalDateTime;

/**
 * Represents a payment associated with a booking.
 * 
 * This is a stub implementation for Sprint 1.
 * No real payment gateway integration exists yet.
 */
public class Payment {

    private String id;
    private Booking booking;
    private double amount;
    private PaymentStatus status;
    private LocalDateTime createdAt;

    /**
     * Creates a new payment for a booking.
     *
     * @param id unique payment identifier
     * @param booking the booking associated with this payment
     */
    public Payment(String id, Booking booking) {

        if (booking == null) {
            throw new IllegalArgumentException("Booking cannot be null");
        }

        this.id = id;
        this.booking = booking;
        this.amount = booking.getTotalPrice();
        this.status = PaymentStatus.INITIATED;
        this.createdAt = LocalDateTime.now();
    }

    /**
     * Marks the payment as successful.
     */
    public void markSuccessful() {
        if (status != PaymentStatus.INITIATED) {
            throw new IllegalStateException("Payment cannot be marked successful from current state");
        }
        status = PaymentStatus.SUCCESS;
    }

    /**
     * Marks the payment as failed.
     */
    public void markFailed() {
        if (status != PaymentStatus.INITIATED) {
            throw new IllegalStateException("Payment cannot be marked failed from current state");
        }
        status = PaymentStatus.FAILED;
    }

    /**
     * Refunds a successful payment.
     */
    public void refund() {
        if (status != PaymentStatus.SUCCESS) {
            throw new IllegalStateException("Only successful payments can be refunded");
        }
        status = PaymentStatus.REFUNDED;
    }

    /** @return payment id */
    public String getId() { return id; }

    /** @return associated booking */
    public Booking getBooking() { return booking; }

    /** @return payment amount */
    public double getAmount() { return amount; }

    /** @return current payment status */
    public PaymentStatus getStatus() { return status; }

    /** @return payment creation timestamp */
    public LocalDateTime getCreatedAt() { return createdAt; }
}