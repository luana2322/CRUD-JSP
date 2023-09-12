package com.example.demo.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "category")
public class Category {
	@Id
	@Column(name = "categoryid",updatable = false)
	private String categoryId;
	@Column(name = "categoryname",nullable = false,columnDefinition = "TEXT")
	private String categoryName;
	@Column(name = "description",nullable = false,columnDefinition = "TEXT")
	private String description;

	public String getcategoryId() {
		return categoryId;
	}

	public void setcategoryId(String categoryId) {
	this.categoryId = categoryId;
	}

	public String getcategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Category(String categoryId, String categoryName, String description) {
		super();
		this.categoryId = categoryId;
		this.categoryName = categoryName;
		this.description = description;
	}

	public Category() {
		super();
	}

}
