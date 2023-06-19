package dto;

import java.io.Serializable;

public class Goods implements Serializable{
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String goodid;
	private String gname;
	private Integer gprice;
	private String description;
	private String brand;
	private long unitsInStock;
	private int quantity;
	
	public Goods() {
		super();
	}
	public Goods(String goodID, String gname, Integer gPrice) {
		this.goodid = goodID;
		this.gname = gname;
		this.gprice = gPrice;
	}
	public String getgoodID() {
		return goodid;
	}
	public String getgname() {
		return gname;
	}
	public void setgname(String gname) {
		this.gname = gname;
	}
	public void setgoodid(String goodID) {
		this.goodid = goodID;
	}
	public Integer getgPrice() {
		return gprice;
	}
	public void setgprice(Integer gPrice) {
		this.gprice = gPrice;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getbrand() {
		return brand;
	}
	public void setbrand(String brand) {
		this.brand = brand; 
	}
	public long getUnitsInStock() {
		return unitsInStock;
	}
	public void setUnitsInStock(long unitsInStock) {
		this.unitsInStock = unitsInStock;
	}
	public int getQuantity(){
		return quantity;
		}
	public void setQuantity(int quantity){
		this.quantity = quantity;
	}
}
