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
insert into billstatuses (statuscode, detail) values (900, "Đơn mới (Đơn đã lưu chưa được gửi sang HVC)");
insert into billstatuses (statuscode, detail) values (901, "Chờ lấy hàng (Chờ HVC điều phối đơn cho bưu tá)");
insert into billstatuses (statuscode, detail) values (902, "Lấy hàng (Bưu tá đang trên đường tới lấy hàng)");
insert into billstatuses (statuscode, detail) values (903, "Đã lấy hàng (Bưu tá đã nhận hàng từ shop)");
insert into billstatuses (statuscode, detail) values (904, "Giao hàng (Hàng đang được đi giao cho khách)");
insert into billstatuses (statuscode, detail) values (905, "Giao thành công (Đã giao hàng cho khách thành công)");
insert into billstatuses (statuscode, detail) values (906, "Giao thất bại (Bưu tá không giao được hàng)");
insert into billstatuses (statuscode, detail) values (907, "Đang chuyển hoàn (Hàng giao thất bại đang được chuyển ngược trở lại trả shop)");
insert into billstatuses (statuscode, detail) values (908, "Chuyển hoàn (Hàng giao thất bại gửi trả shop)");
insert into billstatuses (statuscode, detail) values (909, "Đã đối soát (Đơn hàng đã thực hiện đối soát với hãng)");
insert into billstatuses (statuscode, detail) values (910, "Đã đối soát khách (Đơn hàng đã thực hiện đối soát với khách)");
insert into billstatuses (statuscode, detail) values (911, "Đã trả COD cho khách (Goship đã chuyển khoản COD cho khách hàng)");
insert into billstatuses (statuscode, detail) values (912, "Chờ thanh toán COD (Đơn hàng đã thực hiện thanh toán nhận COD từ hãng)");
insert into billstatuses (statuscode, detail) values (913, "Hoàn thành (Đơn hàng Hoàn thành - Kết thúc quá trình chuyển phát)");
insert into billstatuses (statuscode, detail) values (914, "Đơn hủy (Đơn hàng đã bị hủy - Khách hủy hoặc shop hủy)");
insert into billstatuses (statuscode, detail) values (915, "Chậm lấy/giao (Có thể do shop hoặc bưu tá)");
insert into billstatuses (statuscode, detail) values (916, "Giao hàng một phần (Đơn hàng giao hàng một phần)");
insert into billstatuses (statuscode, detail) values (1000, "Đơn lỗi");


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