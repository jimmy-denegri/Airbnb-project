package stayFinder;

/**
 * Represents the lifecycle status of a booking.
 */
public enum BookingStatus {

    /** Booking has been created but not yet confirmed */
    PENDING,

    /** Booking has been confirmed (e.g., after successful payment) */
    CONFIRMED,

    /** Booking was cancelled by the guest or host */
    CANCELLED,

    /** Booking has been completed after the stay */
    COMPLETED
}
