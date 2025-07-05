create database Inventory_Management_System;
use Inventory_Management_System;
Create table items(
item_id int primary key,
item_name varchar (100),
item_type varchar (50), -- 'Raw Material' or 'finished product'
unit varchar (20),
reorder_level int);

create table suppliers(
supplier_id	int primary key,
supplier_name varchar (100),
contact_person varchar (100),
phone varchar (20),
address text
);

show tables;

Create table customers (
customer_id	int primary key,
customer_name varchar (100),
phone varchar (20),
address text
);
select * from purchase_orders;
Create table purchase_orders (
po_id int primary key,	
supplier_id	int,
order_date date,
status varchar (50),
foreign key (supplier_id) REFERENCES suppliers(supplier_id)
);

select * from purchase_order_details;
create table purchase_order_details (
po_detail_id int primary key,
po_id int,
item_id	int,
quantity int,
rate decimal (10,2),
foreign key	(po_id) references purchase_orders(po_id),
foreign key (item_id) references items(item_id)
);

create table goods_received (
grn_id int primary key,
po_id int,
received_date date,
item_id int,
received_qty int,
foreign key (po_id) references purchase_orders(po_id),
foreign key (item_id) references items(item_id)
);

create table stock (
item_id int primary key,
available_qty int,
foreign key (item_id) references items(item_id)
);

create table sales_orders (
so_id int primary key,
customer_id	int,
order_date date,
status varchar (50),
foreign key (customer_id) references customers(customer_id)
);

create table sales_orders_details (
so_detail_id int primary key,
so_id int,
item_id	int,
quantity int,
rate decimal (10,2),
foreign key (so_id) references Sales_Orders(so_id),
foreign key (item_id) references items (item_id)
);

create table stock_movement (
movement_id	int primary key,
item_id	int,
movement_type varchar (20),	
quantity int,
movement_date date,	
reference_id int,
foreign key (item_id) references items(item_id)
);

show tables;
select * from goods_received;
select * from purchase_orders;












