package entity;



public class ProductVans {
    private int id;
    private String name;
    private String image;
    private int price;
    private String description;

    public ProductVans() {
    }

    public ProductVans(int id, String name, String image, int price,  String description) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    

  

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "ProductVans{" + "id=" + id + ", name=" + name + ", image=" + image + ", price=" + price +  ", description=" + description + '}';
    }
    
}
