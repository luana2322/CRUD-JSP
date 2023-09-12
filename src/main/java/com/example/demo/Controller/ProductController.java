package com.example.demo.Controller;

import java.net.http.HttpRequest;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.models.Category;
import com.example.demo.models.Product;
import com.example.demo.repositories.ProductRepository;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping(path = "products")
public class ProductController {
	@Autowired
	private ProductRepository productRepository;

	@RequestMapping(value = "/getProductsByCategoryID/{categoryID}", method = RequestMethod.GET)
	public String getProductsByCategoryID(ModelMap modelMap, @PathVariable String categoryID, HttpSession section) {
		section.setAttribute("cateid", categoryID);
		Iterable<Product> products = productRepository.findByCategoryid(categoryID);

		modelMap.addAttribute("products", products);
		return "productbyid";// productList.jsp
	}

	@RequestMapping(value = "/getProductsByCategoryID/deleteProductsByproductid/{productid}", method = RequestMethod.GET)
	// @DeleteMapping("/getProductsByCategoryID/deleteProductsByproductid/{productid}")
	public String deleteProductsByproductid(ModelMap modelMap, @PathVariable String productid, HttpSession section) {

		productRepository.deleteById(productid);

		String cateid = (String) section.getAttribute("cateid");
		Iterable<Product> products = productRepository.findByCategoryid(cateid);
		modelMap.addAttribute("products", products);
		return "productbyid";// productList.jsp
	}

	@GetMapping("/update/{productid}")
	public String getupdateviews(ModelMap modelMap, @PathVariable String productid) {
		Optional<Product> findbyid = productRepository.findById(productid);
		Product product = findbyid.get();
		if (product != null) {
			modelMap.addAttribute("products", product);
		}
		modelMap.addAttribute("product", new Product());
		return "updateproduct";
	}

	@PostMapping("/update/updateproduct")
	public String updateproduct(ModelMap modelMap, @ModelAttribute("product") Product product, HttpSession section) {
		productRepository.save(product);

		String cateid = (String) section.getAttribute("cateid");
		Iterable<Product> products = productRepository.findByCategoryid(cateid);
		modelMap.addAttribute("products", products);
		return "productbyid";

	}

	@PostMapping("/addproduct")

	public String addproduct(ModelMap modelMap, @ModelAttribute("product") Product product, HttpSession section) {
		productRepository.save(product);

		Iterable<Category> category = (Iterable<Category>) section.getAttribute("categories");
		if (category != null) {
			modelMap.addAttribute("catgories", category);
		} else {
			System.out.println("null mej nos r ");
		}

		return "category";
	}

}
