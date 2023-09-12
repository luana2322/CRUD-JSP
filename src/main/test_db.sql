create database test_db;
use test_db;

CREATE TABLE category (
  categoryid varchar(10) PRIMARY KEY not null,
  categoryname VARCHAR(255)  not null,
  description VARCHAR(255)
  );
    INSERT INTO category (categoryid, categoryname, description)
VALUES 
('C1', 'Italian', 'Italian cuisine, known for its pasta and pizza dishes'),
('C2', 'Chinese', 'Chinese cuisine, featuring dishes like fried rice and dim sum'),
('C3', 'Mexican', 'Mexican cuisine, known for its tacos and enchiladas'),
('C4', 'Japanese', 'Japanese cuisine, featuring sushi, ramen, and tempura'),
('C5', 'Indian', 'Indian cuisine, known for its curries and spices'),
('C6', 'American', 'American cuisine, including burgers, fries, and steaks'),
('C7', 'Mediterranean', 'Mediterranean cuisine, featuring dishes like falafel and hummus'),
('C8', 'Thai', 'Thai cuisine, known for its spicy and flavorful dishes'),
('C9', 'Vegetarian', 'Vegetarian cuisine, focusing on plant-based ingredients'),
('C10', 'Vegan', 'Vegan cuisine, excluding all animal products'),
('C11', 'Gluten-Free', 'Gluten-free cuisine, suitable for individuals with gluten intolerance');

  CREATE TABLE product(
  productid varchar(10) PRIMARY KEY not null,
  productname VARCHAR(255)  not null,
  price int not null,
  description VARCHAR(255),
  categoryid varchar(10) not null,
  foreign key (categoryid) references category(categoryid)
  );
  
INSERT INTO product (productid, productname, price, description, categoryid)
VALUES 
('F1', 'Margherita Pizza', 10, 'Classic pizza with tomato sauce, mozzarella cheese, and basil', 'C1'),
('F2', 'Kung Pao Chicken', 15, 'Spicy stir-fry chicken dish with peanuts and vegetables', 'C2'),
('F3', 'Tacos al Pastor', 8, 'Mexican street-style tacos with marinated pork and pineapple', 'C3'),
('F4', 'Sushi Combo', 20, 'Assortment of fresh sushi rolls and nigiri', 'C4'),
('F5', 'Butter Chicken', 12, 'Indian curry dish with tender chicken in a creamy tomato sauce', 'C5'),
('F6', 'Cheeseburger', 8, 'Classic burger with cheese, lettuce, tomato, and pickles', 'C6'),
('F7', 'Greek Salad', 10, 'Fresh salad with feta cheese, olives, tomatoes, and cucumbers', 'C7'),
('F8', 'Pad Thai', 14, 'Traditional Thai stir-fried noodles with shrimp, tofu, and peanuts', 'C8'),
('F9', 'Vegetable Curry', 12, 'Flavorful curry made with mixed vegetables in a rich sauce', 'C9'),
('F10', 'Vegan Burger', 10, 'Plant-based burger patty with vegan cheese and toppings', 'C10'),
('F11', 'Gluten-Free Pasta', 15, 'Pasta made from gluten-free ingredients with choice of sauce', 'C11'),
('F12', 'Kung Pao Chicken', 15, 'Spicy stir-fry chicken dish with peanuts and vegetables', 'C2'),
('F14', 'Sushi Combo', 20, 'Assortment of fresh sushi rolls and nigiri', 'C4'),
('F15', 'Butter Chicken', 12, 'Indian curry dish with tender chicken in a creamy tomato sauce', 'C5'),
('F16', 'Cheeseburger', 8, 'Classic burger with cheese, lettuce, tomato, and pickles', 'C6'),
('F17', 'Greek Salad', 10, 'Fresh salad with feta cheese, olives, tomatoes, and cucumbers', 'C7'),
('F18', 'Pad Thai', 14, 'Traditional Thai stir-fried noodles with shrimp, tofu, and peanuts', 'C8'),
('F19', 'Vegetable Curry', 12, 'Flavorful curry made with mixed vegetables in a rich sauce', 'C9'),
('F20', 'Vegan Burger', 10, 'Plant-based burger patty with vegan cheese and toppings', 'C10'),
('F21', 'Margherita Pizza', 10, 'Classic pizza with tomato sauce, mozzarella cheese, and basil', 'C1'),
('F22', 'Kung Pao Chicken', 15, 'Spicy stir-fry chicken dish with peanuts and vegetables', 'C2'),
('F23', 'Tacos al Pastor', 8, 'Mexican street-style tacos with marinated pork and pineapple', 'C3'),
('F24', 'Sushi Combo', 20, 'Assortment of fresh sushi rolls and nigiri', 'C4'),
('F25', 'Butter Chicken', 12, 'Indian curry dish with tender chicken in a creamy tomato sauce', 'C5'),
('F26', 'Cheeseburger', 8, 'Classic burger with cheese, lettuce, tomato, and pickles', 'C6'),
('F27', 'Greek Salad', 10, 'Fresh salad with feta cheese, olives, tomatoes, and cucumbers', 'C7'),
('F28', 'Pad Thai', 14, 'Traditional Thai stir-fried noodles with shrimp, tofu, and peanuts', 'C8'),
('F29', 'Vegetable Curry', 12, 'Flavorful curry made with mixed vegetables in a rich sauce', 'C9'),
('F30', 'Vegan Burger', 10, 'Plant-based burger patty with vegan cheese and toppings', 'C10'),
('F31', 'Gluten-Free Pasta', 15, 'Pasta made from gluten-free ingredients with choice of sauce', 'C11'),
('F32', 'Kung Pao Chicken', 15, 'Spicy stir-fry chicken dish with peanuts and vegetables', 'C2'),
('F33', 'Tacos al Pastor', 8, 'Mexican street-style tacos with marinated pork and pineapple', 'C3'),
('F34', 'Sushi Combo', 20, 'Assortment of fresh sushi rolls and nigiri', 'C4'),
('F35', 'Butter Chicken', 12, 'Indian curry dish with tender chicken in a creamy tomato sauce', 'C5'),
('F36', 'Cheeseburger', 8, 'Classic burger with cheese, lettuce, tomato, and pickles', 'C6'),
('F37', 'Greek Salad', 10, 'Fresh salad with feta cheese, olives, tomatoes, and cucumbers', 'C7'),
('F38', 'Pad Thai', 14, 'Traditional Thai stir-fried noodles with shrimp, tofu, and peanuts', 'C8'),
('F39', 'Vegetable Curry', 12, 'Flavorful curry made with mixed vegetables in a rich sauce', 'C9'),
('F40', 'Vegan Burger', 10, 'Plant-based burger patty with vegan cheese and toppings', 'C10'),
('F41', 'Margherita Pizza', 10, 'Classic pizza with tomato sauce, mozzarella cheese, and basil', 'C1'),
('F42', 'Kung Pao Chicken', 15, 'Spicy stir-fry chicken dish with peanuts and vegetables', 'C2'),
('F43', 'Tacos al Pastor', 8, 'Mexican street-style tacos with marinated pork and pineapple', 'C3'),
('F44', 'Sushi Combo', 20, 'Assortment of fresh sushi rolls and nigiri', 'C4'),
('F45', 'Butter Chicken', 12, 'Indian curry dish with tender chicken in a creamy tomato sauce', 'C5'),
('F46', 'Cheeseburger', 8, 'Classic burger with cheese, lettuce, tomato, and pickles', 'C6'),
('F47', 'Greek Salad', 10, 'Fresh salad with feta cheese, olives, tomatoes, and cucumbers', 'C7'),
('F48', 'Pad Thai', 14, 'Traditional Thai stir-fried noodles with shrimp, tofu, and peanuts', 'C8'),
('F49', 'Vegetable Curry', 12, 'Flavorful curry made with mixed vegetables in a rich sauce', 'C9'),
('F50', 'Vegan Burger', 10, 'Plant-based burger patty with vegan cheese and toppings', 'C10'),
('F51', 'Gluten-Free Pasta', 15, 'Pasta made from gluten-free ingredients with choice of sauce', 'C11');


	delete from product where product.productid='F1';
    select * from category;
    select * from product;
    delete from category where category.categoryid='C13';


-- test delete
    INSERT INTO product (productid, productname, price, description, categoryid)
VALUES 
('F1', 'Margherita Pizza', 10, 'Classic pizza with tomato sauce, mozzarella cheese, and basil', 'C1');