package com.example.demo.models;

import jakarta.persistence.Column;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "product")
public class Product {
	@Id
	@Column(name = "productid")
	private String productid;
	@Column(name = "productname")
	private String productname;
	private int price;
	private String description;
	private String categoryid;

	public String getProductid() {
		return productid;
	}

	public void setProductid(String productid) {
		this.productid = productid;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
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

	public String getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(String categoryid) {
		this.categoryid = categoryid;
	}

	public Product(String productid, String productname, int price, String description, String categoryid) {
		super();
		this.productid = productid;
		this.productname = productname;
		this.price = price;
		this.description = description;
		this.categoryid = categoryid;
	}

	public Product() {
		super();
	}

}
