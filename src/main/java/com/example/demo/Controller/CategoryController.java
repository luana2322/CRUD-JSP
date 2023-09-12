package com.example.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.models.Category;
import com.example.demo.models.Product;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping(path = "categories")
//http:localhost:8080/categories
public class CategoryController {
	@Autowired
	private CrudRepository<Category, String> categoryRepository;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String getListCategory(Model modelmap) {
		Iterable<Category> catgories = categoryRepository.findAll();

		modelmap.addAttribute("catgories", catgories);

		return "category";
	}

	// @RequestMapping(value="/add",method=RequestMethod.GET)
	@GetMapping("/add")
	public String getformaddnewcategory(ModelMap modelMap) {
		modelMap.addAttribute("category", new Category());
		return "addcategory";
	}

//    @PostMapping("/add/addnew")
//    public String addnewcategory(ModelMap meodelMap,
//    							@RequestParam ("CategoryId") String cateid
//    							,@RequestParam("CategoryName") String CategoryName,
//    							@RequestParam("des") String des) {
//    
//    	categoryRepository.save(new Category(cateid,CategoryName,des));
//    	Iterable<Category> catgories=categoryRepository.findAll();
//        
//    	meodelMap.addAttribute("catgories",catgories);
//    	return "category";
//    }

	@PostMapping("/add/addnew")
	//@ResponseBody-- này nó trả về text ra màn hình
	public String addnewcategory(ModelMap modelMap, @ModelAttribute("category") Category cate) {

		categoryRepository.save(cate);
		Iterable<Category> catgories = categoryRepository.findAll();

		modelMap.addAttribute("catgories", catgories);

		return "category";
	}

	@GetMapping("/addproduct")
	public String getaddproductfile(ModelMap modelMap, HttpSession section) {
		Iterable<Category> list = categoryRepository.findAll();
		modelMap.addAttribute("category", list);
		section.setAttribute("categories", list);
	//	modelMap.addAttribute("product", new Product());
		return "addproduct";
	}

}
