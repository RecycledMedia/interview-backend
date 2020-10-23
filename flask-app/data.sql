/* Users */
create table users (
	id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	ip_address VARCHAR(20)
);
insert into users (id, first_name, last_name, email, gender, ip_address) values (1, 'Gaye', 'Rapport', 'grapport0@digg.com', 'Female', '22.150.253.58');
insert into users (id, first_name, last_name, email, gender, ip_address) values (2, 'Kate', 'Heeran', 'kheeran1@godaddy.com', 'Female', '231.13.85.118');
insert into users (id, first_name, last_name, email, gender, ip_address) values (3, 'Bridgette', 'Dunne', 'bdunne2@de.vu', 'Female', '221.157.43.242');
insert into users (id, first_name, last_name, email, gender, ip_address) values (4, 'Odelia', 'Pavese', 'opavese3@amazon.com', 'Female', '113.158.188.115');
insert into users (id, first_name, last_name, email, gender, ip_address) values (5, 'Meredith', 'McTeggart', 'mmcteggart4@illinois.edu', 'Male', '172.12.151.194');
insert into users (id, first_name, last_name, email, gender, ip_address) values (6, 'Karry', 'Schwand', 'kschwand5@pen.io', 'Female', '10.236.75.217');
insert into users (id, first_name, last_name, email, gender, ip_address) values (7, 'Vergil', 'Kristoffersson', 'vkristoffersson6@disqus.com', 'Male', '89.124.50.252');
insert into users (id, first_name, last_name, email, gender, ip_address) values (8, 'Ezekiel', 'Sokale', 'esokale7@un.org', 'Male', '14.87.187.108');
insert into users (id, first_name, last_name, email, gender, ip_address) values (9, 'Marlena', 'Boykett', 'mboykett8@odnoklassniki.ru', 'Female', '74.214.150.193');
insert into users (id, first_name, last_name, email, gender, ip_address) values (10, 'Brittni', 'Romaint', 'bromaint9@wikipedia.org', 'Female', '190.234.134.214');


/* Items */
create table items (
	id INT,
	name VARCHAR(50),
	description TEXT,
	images VARCHAR(50),
	seller_id INT
);
insert into items (id, name, description, images, seller_id) values (1, 'Cheese - Montery Jack', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '[{"url":"http://dummyimage.com/109x187.png/ff4444/ffffff"},{"url":"http://dummyimage.com/114x101.jpg/5fa2dd/ffffff"},{"url":"http://dummyimage.com/137x126.bmp/ff4444/ffffff"},{"url":"http://dummyimage.com/232x100.png/ff4444/ffffff"}]', 1);
insert into items (id, name, description, images, seller_id) values (2, 'Curry Paste - Green Masala', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '[{"url":"http://dummyimage.com/213x131.png/dddddd/000000"},{"url":"http://dummyimage.com/226x141.jpg/cc0000/ffffff"},{"url":"http://dummyimage.com/239x238.png/ff4444/ffffff"}]', 2);
insert into items (id, name, description, images, seller_id) values (3, 'Ice Cream - Super Sandwich', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.', '[{"url":"http://dummyimage.com/239x139.png/cc0000/ffffff"},{"url":"http://dummyimage.com/131x197.bmp/dddddd/000000"},{"url":"http://dummyimage.com/114x156.jpg/5fa2dd/ffffff"},{"url":"http://dummyimage.com/159x111.bmp/5fa2dd/ffffff"}]', 3);
insert into items (id, name, description, images, seller_id) values (4, 'Pop - Club Soda Can', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '[{"url":"http://dummyimage.com/123x166.jpg/cc0000/ffffff"},{"url":"http://dummyimage.com/144x182.bmp/cc0000/ffffff"}]', 4);
insert into items (id, name, description, images, seller_id) values (5, 'Water - Evian 355 Ml', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', '[{"url":"http://dummyimage.com/149x176.jpg/cc0000/ffffff"}]', 5);
insert into items (id, name, description, images, seller_id) values (6, 'Beef - Kindney, Whole', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '[{"url":"http://dummyimage.com/169x106.jpg/5fa2dd/ffffff"},{"url":"http://dummyimage.com/209x238.png/dddddd/000000"},{"url":"http://dummyimage.com/182x116.jpg/cc0000/ffffff"},{"url":"http://dummyimage.com/159x222.bmp/5fa2dd/ffffff"},{"url":"http://dummyimage.com/235x185.jpg/5fa2dd/ffffff"}]', 6);
insert into items (id, name, description, images, seller_id) values (7, 'Red Snapper - Fillet, Skin On', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '[{"url":"http://dummyimage.com/142x210.bmp/dddddd/000000"},{"url":"http://dummyimage.com/132x210.jpg/ff4444/ffffff"},{"url":"http://dummyimage.com/161x219.jpg/ff4444/ffffff"},{"url":"http://dummyimage.com/212x196.jpg/cc0000/ffffff"},{"url":"http://dummyimage.com/153x231.bmp/cc0000/ffffff"}]', 7);
insert into items (id, name, description, images, seller_id) values (8, 'Spinach - Frozen', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', '[{"url":"http://dummyimage.com/129x231.jpg/dddddd/000000"},{"url":"http://dummyimage.com/143x144.bmp/cc0000/ffffff"},{"url":"http://dummyimage.com/227x245.bmp/cc0000/ffffff"}]', 8);
insert into items (id, name, description, images, seller_id) values (9, 'Beef - Flank Steak', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '[{"url":"http://dummyimage.com/106x176.jpg/5fa2dd/ffffff"},{"url":"http://dummyimage.com/170x215.jpg/cc0000/ffffff"}]', 9);
insert into items (id, name, description, images, seller_id) values (10, 'Pepper - White, Ground', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '[{"url":"http://dummyimage.com/221x126.bmp/ff4444/ffffff"},{"url":"http://dummyimage.com/243x214.bmp/5fa2dd/ffffff"},{"url":"http://dummyimage.com/235x204.jpg/dddddd/000000"}]', 10);

