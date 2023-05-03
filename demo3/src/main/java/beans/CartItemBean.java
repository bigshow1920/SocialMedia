package beans;

/**
 *
 * @author Lonely
 */
public class CartItemBean {

    private String number;
    private String description;
    private double price;
    private int quantity;
    private double TotalCost;

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotalCost() {
        return TotalCost;
    }

    public void setTotalCost(double TotalCost) {
        this.TotalCost = TotalCost;
    }

}