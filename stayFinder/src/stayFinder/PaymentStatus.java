package stayFinder;

/**
 * Represents the lifecycle state of a payment.
 */
public enum PaymentStatus {

    /** Payment has been created but not processed yet */
    INITIATED,

    /** Payment was successfully completed */
    SUCCESS,

    /** Payment failed during processing */
    FAILED,

    /** Payment was refunded after being successful */
    REFUNDED
}