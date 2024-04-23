-- database name: "db_restaurant"

CREATE TABLE food( 
    food_id INT(11) PRIMARY KEY AUTO_INCREMENT, 
    food_name VARCHAR(255), 
    food_star VARCHAR(255),
    food_vote VARCHAR(255),
    food_price VARCHAR(255),
    food_discount VARCHAR(255),
    food_desc VARCHAR(255),
    food_status VARCHAR(255),
    food_type VARCHAR(255),
    food_category VARCHAR(255),
    food_src VARCHAR(255)
) ENGINE=INNODB;

INSERT INTO food (food_name, food_star, food_vote, food_price, food_discount, food_desc, food_status, food_type, food_category, food_src)
VALUES("Kaju Sangam","4.5", "999", "400.00", "0.00", "serve per Kg", "best seller", "sugar", "Sweet ", "taco/taco-1.png"),
("Gud Sandesh","4.5", "999", "500.00", "100.00", "serve per Kg", "best seller", "sugar", "Sweet ", "taco/taco-2.png"),
("Gulab Jamun","4.5","500","360.00","0.00","serve per Kg","best seller","sugar","Sweet All","taco/taco-3.png"),

("Chena Toast","4.5","999","440.00","40.00","serve per Kg","best seller","sugar","Sweet All","taco/taco-4.png"),

 ("Rasgulla ","4","500","480.00","0.00","serve per Kg","normal","sugar","Sweet All","taco/taco-5.png"),

("Malai Chap","4","500","500.00","50.00","serve per Kg","new dishes","sugar","Sweet All","taco/taco-6.png"),

("Khajoor Barfi","4.5","800","640.00","90.00","serve per Kg","normal","sugar Free","Sweet All","taco/taco-7.png"),

("Chhena laddo","4.5","100","440.00","0.00","serve per Kg","new dishes","sugar","Sweet All","taco/taco-8.png"),

("Ghi laddo","4.5","100","400.00","0.00","serve per Kg","best seller","sugar","Sweet All","taco/taco-9.png"),

("Besan laddo","4.5","100","400.00","0.00","serve per Kg","best seller","sugar","Sweet All","taco/taco-10.png"),

("Milk cake","4.5","100","480.00","0.00","serve per Kg","new dishes","sugar Free","Sweet All","taco/taco-11.png"),

("Mava vati","4.5","100","480.00","0.00","serve per Kg","normal","vegan","Sweet All","taco/taco-12.png"),

("Amrit Peda","4.5","100","500.00","50.00","serve per Kg","normal","vegan","Sweet All","taco/taco-13.png"),

("Masala Dosa","4","400","50.00","0.00","01 per serving","best seller","meat","South Indian All","burrito/burrito-1.png"),

("Sada Dosa","4","699","40.00","0.00","01 per serving","normal","meat","South Indian All","burrito/burrito-2.png"),

("Sambhar Vada","4.5","999","40.00","0.00","02 peice per serving","normal","meat","South Indian All","burrito/burrito-3.png"),

("Idly sambhar","4.5","999","30.00","0.00","02 peice per serving","normal","meat","South Indian All","burrito/burrito-4.png"),

("Samosa","4.5","999","24.00","0.00","02 peice per serving","best seller","meat","Snacks All","nachos/nachos-1.png"),

("Kachodi","4","999","24.00","0.00","02 peice per serving","normal","vegan","Snacks All","nachos/nachos-2.png"),

("Paneer bread Pakoda","4.5","999","50.00","0.00","02 peice per serving","normal","vegan","Snacks All","nachos/salsa-1.png"),

("Moong Vada","4","699","30.00","0.00","04 peice per serving","seasonal dishes","vegan","Snacks All","nachos/salsa-2.png"),


("Milk Pastry","4.5","499","30.00","5.00","01 peice per serving","best seller","vegan","Dessert All","side/side-1.png"),

("Rabdi","4.5","999","40.00","0.00","01 cup per serving","new dishes","meat","Dessert All","side/side-2.png"),

("Lassi","4.5","999","45.00","5.00","01 glass per serving","seasonal dishes","meat","Dessert All","side/side-3.png"),


("Tea","4.5","999","20.00","0.00","01 cup per serving","best seller","vegan","Hot Drink All","dessert/dessert-1.png"),

("Coffee","4.5","999","25.00","0.00","01 cup per serving","normal","vegan","Hot Drink All","dessert/dessert-2.png"),


("Vanilla Amul","4.5","999","50.00","0.00","02 scoop per serving","normal","vegan","Ice Cream All","drink/drink-1.png"),
("Strawberry Amul","4.5","999","60.00","30.00","02 scoop per serving","normal","vegan","Ice Cream All","drink/drink-2.png"),
("Chocolate Amul","4.5","999","70.00","10.00","02 scoop per serving","best seller","vegan","Ice Cream All","drink/drink-3.png"),
("Butter Scotch Amul","4","999","60.00","0.00","02 scoop per serving","best seller","vegan","Ice Cream All","drink/drink-4.png"),
("Mango Amul","3.5","999","70.00","0.00","02 scoop per serving","seasonal dishes best seller","vegan","Ice Cream All","drink/drink-5.png");


CREATE TABLE user( 
    user_id INT(11) PRIMARY KEY AUTO_INCREMENT, 
    user_name VARCHAR(255), 
    user_email VARCHAR(255),
    user_phone VARCHAR(255),
    user_password VARCHAR(255),
    user_birth VARCHAR(255),
    user_gender VARCHAR(255)
) ENGINE=INNODB;


CREATE TABLE cart (
  user_id INT,
  food_id INT,
  item_qty INT,
  primary key (user_id, food_id)
);


CREATE TABLE booktable( 
    book_id INT(11) PRIMARY KEY AUTO_INCREMENT, 
    book_name VARCHAR(255), 
    book_phone VARCHAR(255),
    book_people INT,
    book_tables INT,
    user_id INT,
    book_when VARCHAR(255),
    book_note TEXT
) ENGINE=INNODB;


CREATE TABLE billdetails (
  bill_id INT,
  food_id INT,
  item_qty INT,
  primary key (bill_id, food_id)
);

CREATE TABLE billstatus (
  bill_id INT,
  user_id INT,
  bill_phone VARCHAR(255),
  bill_address TEXT,
  bill_when VARCHAR(255),
  bill_method VARCHAR(255),
  bill_discount INT,
  bill_delivery INT,
  bill_total INT,
  bill_paid VARCHAR(255),
  bill_status INT,
  primary key (bill_id)
);



  