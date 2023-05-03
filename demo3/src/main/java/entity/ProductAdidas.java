package entity;



public class ProductAdidas {
    private int id;
    private String name;
    private String image;
    private int price;
    private String description;
    private String range;

    public ProductAdidas() {
    }
    public String setrange(int price)
    {
    	if (price<2000000 && price>1000000)
    		return "1stRange";
    	else if (price<5000000 && price>2000000)
    		return "2ndRange";
    	else if (price<10000000 && price>5000000)
    		return "3rdRange";
    	else if (price>10000000)
    		return "4thRange";
    	return "0";
    }
    public ProductAdidas(int id, String name, String image, int price,  String description) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.description = description;
        this.range=setrange(price);     
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
        return "ProductAdidas{" + "id=" + id + ", name=" + name + ", image=" + image + ", price=" + price +  ", description=" + description + '}';
    }
    
}
