package dto;

import java.io.Serializable;

public class Product {
    private int productId;
    private int productPrice;
    private String name;
    private String brand;

    public Product(int productId, int productPrice, String name, String brand) {
        this.productId = productId;
        this.productPrice = productPrice;
        this.name = name;
        this.brand = brand;
    }

    public void setProductId(int productId) {
		this.productId = productId;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public int getProductId() {
        return productId;
    }

    public int getProductPrice() {
        return productPrice;
    }

    public String getName() {
        return name;
    }

    public String getBrand() {
        return brand;
    }
}