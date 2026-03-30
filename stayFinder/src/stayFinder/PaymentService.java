package stayFinder;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * Service responsible for handling payment creation and status updates.
 * 
 * Uses in-memory storage for Sprint 1.
 */
public class PaymentService {

    private Map<String, Payment> payments = new HashMap<>();

    /**
     * Creates a payment for a booking.
     *
     * @param booking booking to associate payment with
     * @return created Payment
     */
    public Payment createPayment(Booking booking) {

        String paymentId = UUID.randomUUID().toString();
        Payment payment = new Payment(paymentId, booking);

        payments.put(paymentId, payment);
        return payment;
    }

    /**
     * Marks a payment as successful.
     *
     * @param paymentId id of payment
     */
    public void markPaymentSuccessful(String paymentId) {
        Payment payment = getPayment(paymentId);
        payment.markSuccessful();
    }

    /**
     * Marks a payment as failed.
     *
     * @param paymentId id of payment
     */
    public void markPaymentFailed(String paymentId) {
        Payment payment = getPayment(paymentId);
        payment.markFailed();
    }

    /**
     * Refunds a payment.
     *
     * @param paymentId id of payment
     */
    public void refundPayment(String paymentId) {
        Payment payment = getPayment(paymentId);
        payment.refund();
    }

    /**
     * Retrieves a payment by id.
     */
    private Payment getPayment(String paymentId) {
        Payment payment = payments.get(paymentId);
        if (payment == null) {
            throw new IllegalArgumentException("Payment not found: " + paymentId);
        }
        return payment;
    }
}