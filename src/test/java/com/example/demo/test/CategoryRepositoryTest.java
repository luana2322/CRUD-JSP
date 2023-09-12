package com.example.demo.test;

import java.util.Optional;


import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.data.repository.CrudRepository;
import org.springframework.test.annotation.Rollback;

import com.example.demo.models.Category;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
@Rollback(false)
public class CategoryRepositoryTest {
	@Autowired
	private CrudRepository<Category, String> caterepo;

	@Test
	public void testadd() {
		
		Category cate=new Category("C13", "test", "test");
		
		Category catesave=caterepo.save(cate);
		
		
		Assertions.assertThat(catesave).isNotNull();
		Assertions.assertThat(catesave.getcategoryId()).isGreaterThan("");
	}

//	@Test
//	public void testupdate() {
//		String cateId = "C13";
//		Optional<Category> catefind = caterepo.findById(cateId);
//
//		Category cate = catefind.get();
//
//		cate.setDescription("testupdate");
//
//		caterepo.save(cate);
//	Category cate1=caterepo.findById(cateId).get();
//	Assertions.assertThat(cate1.getDescription()).isEqualTo("	");
//	}
//
//	@Test
//	public void testdelete() {
//		String cateId = "C13";
//		caterepo.deleteById(cateId);
//	}
}
