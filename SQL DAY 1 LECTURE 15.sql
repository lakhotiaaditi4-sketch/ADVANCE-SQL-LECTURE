--THE CASE OF ITC AND ITS SALES--
--CREATE A EXCEL DATA SHEET CONTAINING THE COLUMN NAME DISTRIBUTOR ID,NAME,CITY,REGION,PHONE
--TABLE OF DISTRIBUTION--
CREATE TABLE distributors (
  distributor_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  city TEXT,
  region TEXT,
  phone TEXT
  );
  
  
  --Dropping the table----distributors
  DROP TABLE distributors;
  
  --CREATE THE TABLE WITH NAME PRODUCTS CONTAINING PRODUCT ID, PRODUCT NAME, PRODUCT BRAND, PRODUCT CATEGORY , PRODUCT PRICE AND STOCK
  CREATE TABLE PRODUCT(
    Product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL UNIQUE,
    product_brand TEXT,
    category TEXT NOT NULL,
    price REAL CHECK (price>0),
    stock INTEGER DEFAULT 0
    );
    --CREATE A TABLE CONTAINING  NAMES SALE AND SHOULD HAVE SALES ID,PRODUCT ID, DISTRIBUTOR ID, SALES DATE, QUANTITY AND AMOUNT
 CREATE TABLE sales(
   sales_id INTEGER PRIMARY KEY,
   product_id INTEGER ,
   distributor_id INTEGER UNIQUE,
   sale_date TEXT,
   quantity INTEGER CHECK (quantity>0),
   amount REAL,
   Foreign KEY (product_id) REFERENCES products(product_id),
   FOREIGN KEY (distributor_id) REFERENCES distributors(distributor_id)
   );
   --CHECKING THE COLUMN--
   PRAGMA table_info(sales);
   PRAGMA table_info(Distributors);
   PRAGMA table_info(Products);