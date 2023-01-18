# Customers
- It will have customeridas primary key
- name,email,password,address,when he created the account 

# Admin
- It will have adminid,name,password,phonenumber and
- refers to customersid and productsid

# Products
- It has name,product type,when it has created 
- some admins will have access to the products

# Activities
-  The activities of the product which differs with id
- it has name,desc,when  this category is createad  and 
- location of the activity,discount of the category
- start time and end time of the activity , no of people can go to that activity
- it has a boolean value of bestsellers 

# Tours
-  The tours of the product which differs with id
- it has name,desc,price,when  this category is createad  and 
- location of the activity,discount of the category
- start time and end time of the activity , no of people can go to that activity
- it has a boolean value of bestsellers 

# discounts
- If there are any discounts for the product it tells you the active discount and percentage of discount
- can modify the discount offer

# Bookings
- having primary key as bookingid and refers to track and payment
- we can see the total amount that it is created and status of order
- if you want to cancel the order we can cancel with changing the status as cancelled

# Ratings and reviews
-  User can rate the products and review the products using this table
-  other user can see these reviews and ratings accordingly

# Payments
- Having reference of orderid
- total cost of the payment and status of the transaction
- date of transaction with refrenceid of the payment