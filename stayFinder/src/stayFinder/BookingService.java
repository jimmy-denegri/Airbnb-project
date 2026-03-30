package stayFinder;

import java.time.LocalDate;
import java.util.*;

/**
 * Service class responsible for managing bookings.
 * 
 * This class handles the creation of bookings, confirming bookings,
 * canceling bookings, and retrieving existing bookings.
 * 
 * NOTE: This implementation uses in memory storage and will be replaced
 * with database-backed persistence in a later sprint.
 */
public class BookingService {

    /**
     * In memory storage for bookings.
     * Key = bookingId
     * Value = Booking object
     */
    private Map<String, Booking> bookings = new HashMap<>();

    /**
     * Creates a new booking and stores it in memory.
     *
     * @param bookingId unique identifier for the booking
     * @param listing the listing being booked
     * @param guest the user making the booking
     * @param checkIn check in date
     * @param checkOut check date
     * @param guestCount number of guests staying
     * @return the created Booking
     */
    public Booking createBooking(String bookingId, Listing listing, User guest,
                                 LocalDate checkIn, LocalDate checkOut, int guestCount) {

        Booking booking = new Booking(
                bookingId,
                listing,
                guest,
                checkIn,
                checkOut,
                guestCount
        );

        bookings.put(bookingId, booking);
        return booking;
    }

    /**
     * Confirms an existing booking.
     *
     * @param bookingId the id of the booking to confirm
     * @throws IllegalArgumentException if booking does not exist
     */
    public void confirmBooking(String bookingId) {
        Booking booking = bookings.get(bookingId);

        if (booking == null) {
            throw new IllegalArgumentException("Booking not found: " + bookingId);
        }

        booking.confirm();
    }

    /**
     * Cancels an existing booking.
     *
     * @param bookingId the id of the booking to cancel
     * @throws IllegalArgumentException if booking does not exist
     */
    public void cancelBooking(String bookingId) {
        Booking booking = bookings.get(bookingId);

        if (booking == null) {
            throw new IllegalArgumentException("Booking not found: " + bookingId);
        }

        booking.cancel();
    }

    /**
     * Retrieves a booking by id.
     *
     * @param bookingId the booking id
     * @return the Booking, or null if not found
     */
    public Booking getBookingById(String bookingId) {
        return bookings.get(bookingId);
    }

    /**
     * Returns all bookings currently stored in memory.
     *
     * @return list of all bookings
     */
    public List<Booking> getAllBookings() {
        return new ArrayList<>(bookings.values());
    }
}
