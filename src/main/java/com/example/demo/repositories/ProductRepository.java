package com.example.demo.repositories;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.models.Product;
import java.util.List;



public interface ProductRepository extends CrudRepository<Product, String> {

	Iterable<Product> findByCategoryid(String categoryid);
	 
	Iterable<Product>  findByPrice(int price);
}
