# Customers
- It will have customerid,name,email,password,when he created the account and 
- addressid which refers to customer address table

# Customer Address
- customer can store multiple address in this table
- it is having username and when he updated the address

# Admin
- It will have adminid,name,password,phonenumber and
- refers to customersid and productsid

# Products
- It has name,desc,price,when it has created,and 
- a boolean value to check if it is a bestselller
- it refers to categoryid

# Category
-  The category of the product which differs with id
- it has name,desc,when  this category is createad  and 
- discount of the category

# Specificaions
- spefications have certains values like size,color,fit of the product

# discounts
- If there are any discounts for the product it tells you the active discount and percentage of discount
- can modify the discount offer

# wishlist
- it is having a foreignkey of customer and product  which refers to those tables
- have track of when the wish list is created 

# Cart
- cart having cartid,toatal,price,quantity,when the cart is created

# Ordered Items
- having primary key as orderid and refers to track and payment
- we can see the total amount that it is created and status of order
- if you want to cancel the order we can cancel with changing the status as cancelled

# Track Items
-  we can track the order whether it is shiiper or delivered to the customer
- expected date of delivery with time stamp

# Payments
- Having reference of orderid
- total cost of the payment and status of the transaction
- date of transaction with refrenceid of the payment