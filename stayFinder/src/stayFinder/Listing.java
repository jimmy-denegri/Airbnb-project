package stayFinder;

public class Listing {

    private String id;
    private double pricePerNight;
    private int maxGuests;

    public Listing(String id, double pricePerNight, int maxGuests) {
        this.id = id;
        this.pricePerNight = pricePerNight;
        this.maxGuests = maxGuests;
    }

    public double getPricePerNight() {
        return pricePerNight;
    }

    public int getMaxGuests() {
        return maxGuests;
    }

    public String getId() {
        return id;
    }
}
