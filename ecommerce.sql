CREATE  TABLE Admins
(
    id bigserial PRIMARY KEY NOT NULL unique,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL, 
    address text,
    phoneno VARCHAR(255)
)



CREATE  TABLE Customers
(
    id bigserial PRIMARY KEY NOT NULL unique,
    admin_id BIGINT REFERENCES admins(id),
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    phoneno int NOT NULL,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
)

CREATE  TABLE Customer_address
(
    id bigserial primary key unique,
    customer_id bigint not null references customers(id),
    address varchar(255) not null,
    city varchar(255) not null,
    country varchar(255) not null,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
)

create table specifications
(
  id bigserial primary key unique,
  category_id bigint not null references categories(id),
  name varchar(255) not null,
  size varchar(255) NOT NULL,
  fit varchar(255) NOT NULL,
  color varchar(255) NOT NULL
);


create table discounts
(
  id bigserial primary key unique,
  created_at TIMESTAMP,
  modified_at TIMESTAMP,
  updated_at TIMESTAMP,
  active BOOLEAN,
  discount_percentage decimal
);

create table categories
(
  id bigserial primary key unique,
  product_id bigint references product(id),
  name varchar(255) not null,
  description varchar(255) not null,
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  discount_id bigint references discounts(id)
);



create table product
(
  id bigserial primary key unique,
  admin_id bigint not null references admins(id),
  name varchar(255) not null,
  description varchar(255) not null,
  quantity bigint not null,
  price decimal not null,
  bestseller boolean ,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);


create table wishlist(
  id bigserial primary key unique,
  customer_id  bigint not null references customers(id),
  product_id  bigint not null references product(id),
  quantity  bigint not null,
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  NAME varchar(255) not null,
  price decimal not null
);

create table cart(
  id bigserial primary key unique,
  customer_id  bigint not null references customers(id),
  product_id  bigint not null references product(id),
  quantity  bigint not null,
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  price bigint not null
);

create table payments(
  id bigserial primary key unique,
  customer_id  bigint not null references customers(id),
  status varchar(255) not null,
  amount decimal not null,
  ref_no varchar(255) not null,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);


create table orders(
  id bigserial primary key unique,
  customer_id  bigint not null references customers(id),
  product_id  bigint not null references product(id),
  payment_id  bigint not null references payments(id),
  quantity  bigint not null,
  total decimal not null,
  status varchar(255) not null,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

create table track_order(
  id bigserial primary key unique,
  order_id  bigint not null references orders(id),
  status varchar(255),
  shipped boolean not null,
  delivered boolean not null,
  totalprice decimal not null,
  expected_date TIMESTAMP,
  created_at TIMESTAMP
);