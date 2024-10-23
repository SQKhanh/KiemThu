-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 23, 2024 lúc 03:55 AM
-- Phiên bản máy phục vụ: 8.0.17
-- Phiên bản PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopeeclone`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address`
--

CREATE TABLE `address` (
  `addressId` bigint(20) NOT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `modifierBy` varchar(255) DEFAULT NULL,
  `modifierDate` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `ward_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `cartId` bigint(20) NOT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `modifierBy` varchar(255) DEFAULT NULL,
  `modifierDate` datetime(6) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `categoryId` bigint(20) NOT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `modifierBy` varchar(255) DEFAULT NULL,
  `modifierDate` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`categoryId`, `createBy`, `createDate`, `modifierBy`, `modifierDate`, `description`, `name`) VALUES
(1, 'hello', '2024-10-23 10:34:38.112000', 'hello', '2024-10-23 10:34:38.112000', 'máy tính bảng okela', 'Máy Tính Bảng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `districts`
--

CREATE TABLE `districts` (
  `districtId` bigint(20) NOT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `modifierBy` varchar(255) DEFAULT NULL,
  `modifierDate` datetime(6) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `imageId` bigint(20) NOT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `modifierBy` varchar(255) DEFAULT NULL,
  `modifierDate` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`imageId`, `createBy`, `createDate`, `modifierBy`, `modifierDate`, `description`, `url`, `product_id`) VALUES
(1, 'hello', '2024-10-23 10:36:36.606000', 'hello', '2024-10-23 10:36:36.606000', NULL, '/ProductImages/1200px--Claas_Lexion_570,_Fryšták.ogv.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orderId` bigint(20) NOT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `modifierBy` varchar(255) DEFAULT NULL,
  `modifierDate` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `user_userId` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_product`
--

CREATE TABLE `order_product` (
  `orderProductId` bigint(20) NOT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `modifierBy` varchar(255) DEFAULT NULL,
  `modifierDate` datetime(6) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `productId` bigint(20) NOT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `modifierBy` varchar(255) DEFAULT NULL,
  `modifierDate` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `discountPercent` int(11) DEFAULT NULL,
  `importPrice` double NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `supplier_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`productId`, `createBy`, `createDate`, `modifierBy`, `modifierDate`, `description`, `discountPercent`, `importPrice`, `name`, `price`, `category_id`, `supplier_id`) VALUES
(1, 'hello', '2024-10-23 10:36:36.600000', 'hello', '2024-10-23 10:36:36.600000', 'níhaor', 10, 123123, 'Ipad', 51515151, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `provinces`
--

CREATE TABLE `provinces` (
  `provinceId` bigint(20) NOT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `modifierBy` varchar(255) DEFAULT NULL,
  `modifierDate` datetime(6) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `roleId` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`roleId`, `code`, `name`) VALUES
(1, 'ADMIN', 'Quản Trị Viên'),
(2, 'USER', 'Người dùng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles_users`
--

CREATE TABLE `roles_users` (
  `roles_roleId` bigint(20) NOT NULL,
  `users_userId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `roles_users`
--

INSERT INTO `roles_users` (`roles_roleId`, `users_userId`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suppliers`
--

CREATE TABLE `suppliers` (
  `supplierId` bigint(20) NOT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `modifierBy` varchar(255) DEFAULT NULL,
  `modifierDate` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `suppliers`
--

INSERT INTO `suppliers` (`supplierId`, `createBy`, `createDate`, `modifierBy`, `modifierDate`, `description`, `email`, `name`, `phone`) VALUES
(1, 'hello', '2024-10-23 10:35:18.311000', 'hello', '2024-10-23 10:35:18.311000', 'ní hảo', 'apple@gmail.com', 'Apple', '01235718247');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `userId` bigint(20) NOT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `modifierBy` varchar(255) DEFAULT NULL,
  `modifierDate` datetime(6) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`userId`, `createBy`, `createDate`, `modifierBy`, `modifierDate`, `firstName`, `lastName`, `password`, `phoneNumber`, `username`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, '123123', NULL, 'hello'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, '123123', NULL, 'hehe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wards`
--

CREATE TABLE `wards` (
  `wardId` bigint(20) NOT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `modifierBy` varchar(255) DEFAULT NULL,
  `modifierDate` datetime(6) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`addressId`),
  ADD KEY `FKq9uo60rtdod4kgwhsbuf31nb2` (`district_id`),
  ADD KEY `FK3jmvohgy18ctlwbo2dj9uqefl` (`province_id`),
  ADD KEY `FK9nd6mcqqt1y4jhxxj4wuuebq7` (`userId`),
  ADD KEY `FKne7hrmbcv57v0r965ct6lqpb6` (`ward_id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `FKmd2ap4oxo3wvgkf4fnaye532i` (`product_id`),
  ADD KEY `FKb5o626f86h46m4s7ms6ginnop` (`user_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryId`),
  ADD UNIQUE KEY `UK_t8o6pivur7nn124jehx7cygw5` (`name`);

--
-- Chỉ mục cho bảng `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`districtId`),
  ADD UNIQUE KEY `UK_gkpvb55aiiyu9n55qoxcwmkds` (`code`),
  ADD KEY `FK82doq1t64jhly7a546lpvnu2c` (`province_id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`imageId`),
  ADD KEY `FKghwsjbjo7mg3iufxruvq6iu3q` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `FKf5464gxwc32ongdvka2rtvw96` (`address_id`),
  ADD KEY `FK1fe2m4qo6yn42qkuqtgf24dfn` (`user_userId`);

--
-- Chỉ mục cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`orderProductId`),
  ADD KEY `FKl5mnj9n0di7k1v90yxnthkc73` (`order_id`),
  ADD KEY `FKo6helt0ucmegaeachjpx40xhe` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productId`),
  ADD UNIQUE KEY `UK_o61fmio5yukmmiqgnxf8pnavn` (`name`),
  ADD KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  ADD KEY `FK6i174ixi9087gcvvut45em7fd` (`supplier_id`);

--
-- Chỉ mục cho bảng `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`provinceId`),
  ADD UNIQUE KEY `UK_dalikev902uvkpwn632apqe1k` (`code`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`roleId`),
  ADD UNIQUE KEY `UK_ch1113horj4qr56f91omojv8` (`code`);

--
-- Chỉ mục cho bảng `roles_users`
--
ALTER TABLE `roles_users`
  ADD KEY `FKg8vp0o2bpfr8m2f9w8q2cklnm` (`users_userId`),
  ADD KEY `FKhdwr09cpdnh36hx2rib5xj5qf` (`roles_roleId`);

--
-- Chỉ mục cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplierId`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `UK_r43af9ap4edm43mmtq01oddj6` (`username`);

--
-- Chỉ mục cho bảng `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`wardId`),
  ADD UNIQUE KEY `UK_ntapeoauvvkx36nfnwsfhmo8` (`code`),
  ADD KEY `FKfjqt744bo800mb5uax74lav8k` (`district_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `address`
--
ALTER TABLE `address`
  MODIFY `addressId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `cartId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `districts`
--
ALTER TABLE `districts`
  MODIFY `districtId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `imageId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_product`
--
ALTER TABLE `order_product`
  MODIFY `orderProductId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `productId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `provinces`
--
ALTER TABLE `provinces`
  MODIFY `provinceId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `roleId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplierId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `userId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wards`
--
ALTER TABLE `wards`
  MODIFY `wardId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK3jmvohgy18ctlwbo2dj9uqefl` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`provinceId`),
  ADD CONSTRAINT `FK9nd6mcqqt1y4jhxxj4wuuebq7` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `FKne7hrmbcv57v0r965ct6lqpb6` FOREIGN KEY (`ward_id`) REFERENCES `wards` (`wardId`),
  ADD CONSTRAINT `FKq9uo60rtdod4kgwhsbuf31nb2` FOREIGN KEY (`district_id`) REFERENCES `districts` (`districtId`);

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `FKb5o626f86h46m4s7ms6ginnop` FOREIGN KEY (`user_id`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `FKmd2ap4oxo3wvgkf4fnaye532i` FOREIGN KEY (`product_id`) REFERENCES `products` (`productId`);

--
-- Các ràng buộc cho bảng `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `FK82doq1t64jhly7a546lpvnu2c` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`provinceId`);

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FKghwsjbjo7mg3iufxruvq6iu3q` FOREIGN KEY (`product_id`) REFERENCES `products` (`productId`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK1fe2m4qo6yn42qkuqtgf24dfn` FOREIGN KEY (`user_userId`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `FKf5464gxwc32ongdvka2rtvw96` FOREIGN KEY (`address_id`) REFERENCES `address` (`addressId`);

--
-- Các ràng buộc cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `FKl5mnj9n0di7k1v90yxnthkc73` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orderId`),
  ADD CONSTRAINT `FKo6helt0ucmegaeachjpx40xhe` FOREIGN KEY (`product_id`) REFERENCES `products` (`productId`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK6i174ixi9087gcvvut45em7fd` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplierId`),
  ADD CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`categoryId`);

--
-- Các ràng buộc cho bảng `roles_users`
--
ALTER TABLE `roles_users`
  ADD CONSTRAINT `FKg8vp0o2bpfr8m2f9w8q2cklnm` FOREIGN KEY (`users_userId`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `FKhdwr09cpdnh36hx2rib5xj5qf` FOREIGN KEY (`roles_roleId`) REFERENCES `roles` (`roleId`);

--
-- Các ràng buộc cho bảng `wards`
--
ALTER TABLE `wards`
  ADD CONSTRAINT `FKfjqt744bo800mb5uax74lav8k` FOREIGN KEY (`district_id`) REFERENCES `districts` (`districtId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
