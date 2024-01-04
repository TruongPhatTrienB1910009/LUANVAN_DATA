use sellingflower;

insert into group_accounts (name, description) values ('guest', 'no account');
insert into group_accounts (name, description) values ('user', 'have account');
insert into group_accounts (name, description) values ('admin', 'account admin');

# add roles to database
insert into roles (url, description) values ('/cart', 'contain products');
insert into roles (url, description) values ('/account/profile', 'profile of user');
insert into roles (url, description) values ('/account/address', 'address of user');


# insert to group_roles
insert into group_roles (GroupAccountId, RoleId) values ('2', '1');
insert into group_roles (GroupAccountId, RoleId) values ('2', '2');
insert into group_roles (GroupAccountId, RoleId) values ('2', '3');

insert into checkouts (name) values ('Thanh toán khi nhận hàng');

#them vao bang billstatus
insert into billstatuses (statuscode, detail) values (0, "Chưa đặt hàng");
insert into billstatuses (statuscode, detail) values (1, "Chờ xác nhận");
insert into billstatuses (statuscode, detail) values (2, "Đã xác nhận");
insert into billstatuses (statuscode, detail) values (3, "Đã hủy");


# querry
select * from group_accounts;
select * from accounts;
select * from group_roles;
select * from roles;
select * from products;
select * from bills;
select * from detailbills;
select * from billstatuses;
select * from roots;
select * from suppliers;
select * from categories;
select * from checkouts;
select * from deliveryaddresses;
select * from typecategories;
select * from detailimportbills;
select * from importbills;
select * from checkouts;
select * from reviews;
select * from discount;
