package stayFinder;

import java.time.LocalDate;

public class BookingDemo {
    public static void main(String[] args) {
        Listing listing = new Listing("L1", 120.0, 3);
        User guest = new User("U1", "Santiago", "santiago@test.com");

        Booking booking = new Booking(
                "B1",
                listing,
                guest,
                LocalDate.of(2026, 3, 10),
                LocalDate.of(2026, 3, 13),
                2
        );

        System.out.println("Status: " + booking.getStatus());
        System.out.println("Total price: $" + booking.getTotalPrice());

        booking.confirm();
        System.out.println("Confirmed: " + booking.getStatus());
    }
}
