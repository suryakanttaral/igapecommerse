-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2022 at 04:07 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `igapecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firebaseid` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` int(11) NOT NULL,
  `name` varchar(110) NOT NULL,
  `title` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `cityid` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobileno` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `pincode` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `joiningdate` date NOT NULL,
  `expirydate` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `business_ads`
--

CREATE TABLE `business_ads` (
  `id` int(11) NOT NULL,
  `businessid` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `picpath` varchar(300) NOT NULL,
  `link` varchar(200) NOT NULL,
  `srno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `business_affiliates`
--

CREATE TABLE `business_affiliates` (
  `id` int(11) NOT NULL,
  `businessid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `requestedon` datetime DEFAULT NULL,
  `approvedon` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `business_banners`
--

CREATE TABLE `business_banners` (
  `id` int(11) NOT NULL,
  `businessid` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `picpath` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `srno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `business_blogcategories`
--

CREATE TABLE `business_blogcategories` (
  `id` int(11) NOT NULL,
  `businessid` int(11) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `urltitle` varchar(1000) DEFAULT NULL,
  `srno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business_blogcategories`
--

INSERT INTO `business_blogcategories` (`id`, `businessid`, `title`, `urltitle`, `srno`) VALUES
(1, 1, 'Title', 'title', 1),
(2, 3, 'abc', 'pqr', 2),
(3, 5, 'abcddf⏱', 'hello', 0),
(4, 5, 'abcddf', 'pqrsf', 4),
(5, 5, 'Welcome', 'hello', 0),
(6, 5, 'Welcome', 'hello', 40);

-- --------------------------------------------------------

--
-- Table structure for table `business_blogs`
--

CREATE TABLE `business_blogs` (
  `id` int(11) NOT NULL,
  `businessid` int(11) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `urltitle` varchar(1000) DEFAULT NULL,
  `createdon` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `picpath` varchar(100) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business_blogs`
--

INSERT INTO `business_blogs` (`id`, `businessid`, `categoryid`, `title`, `urltitle`, `createdon`, `author`, `picpath`, `body`, `status`) VALUES
(5, 2, 2, 'myproduct', 'myproduct/product', 'team', 'harsh', 'businessproductcategories/fi9za.png', 'good product', NULL),
(6, 6, 6, 'myproduct', 'myproduct/product', 'team', 'harsh', 'businessproductcategories/hiron.png', 'good product', NULL),
(8, 5, 0, 'harsh', 'nilesh', 'pradip', 'shree', 'businessblog/poyoo.png', 'suryakant', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `business_couponproducts`
--

CREATE TABLE `business_couponproducts` (
  `id` int(11) NOT NULL,
  `couponid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `business_coupons`
--

CREATE TABLE `business_coupons` (
  `id` int(11) NOT NULL,
  `businessid` int(11) NOT NULL,
  `couponcode` varchar(100) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `business_productcategories`
--

CREATE TABLE `business_productcategories` (
  `id` int(11) NOT NULL,
  `businessid` int(11) NOT NULL,
  `srno` int(11) NOT NULL,
  `picpath` varchar(500) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `business_productpictures`
--

CREATE TABLE `business_productpictures` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `picpath` varchar(100) NOT NULL,
  `srno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business_productpictures`
--

INSERT INTO `business_productpictures` (`id`, `productid`, `title`, `picpath`, `srno`) VALUES
(15, 1, 'Title', 'businessproducts/pb1p0.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `business_productreviews`
--

CREATE TABLE `business_productreviews` (
  `id` int(11) NOT NULL,
  `productid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `review` varchar(1000) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `business_products`
--

CREATE TABLE `business_products` (
  `id` int(11) NOT NULL,
  `businessid` int(11) NOT NULL,
  `igapvendorid` int(11) NOT NULL,
  `businessvendorid` int(11) NOT NULL,
  `businessproductcategoryid` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `specification` text NOT NULL,
  `mrp` double NOT NULL,
  `price` double NOT NULL,
  `weight` double DEFAULT NULL,
  `picpath` varchar(200) NOT NULL,
  `instock` varchar(3) DEFAULT NULL,
  `affiliatepercent` double NOT NULL DEFAULT 0,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business_products`
--

INSERT INTO `business_products` (`id`, `businessid`, `igapvendorid`, `businessvendorid`, `businessproductcategoryid`, `name`, `title`, `description`, `specification`, `mrp`, `price`, `weight`, `picpath`, `instock`, `affiliatepercent`, `status`) VALUES
(13, 2, 1, 1, 1, 'Pen Drive', 'pen-drive', 'description', 'spectification', 2000, 1500, 100, 'businessproducts/39rtf.png', 'Yes', 2, 'open');

-- --------------------------------------------------------

--
-- Table structure for table `business_productvarieties`
--

CREATE TABLE `business_productvarieties` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `size` varchar(50) NOT NULL,
  `color` varchar(100) NOT NULL,
  `weight` int(11) NOT NULL,
  `mrp` double NOT NULL,
  `price` double NOT NULL,
  `instock` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business_productvarieties`
--

INSERT INTO `business_productvarieties` (`id`, `productid`, `size`, `color`, `weight`, `mrp`, `price`, `instock`, `status`) VALUES
(2, 0, 'xxl', 'red', 5, 0, 0, 'y', 'open'),
(3, 0, 'xxl', 'red', 5, 0, 0, 'y', 'open'),
(4, 0, 'xxl', 'red', 5, 0, 0, 'y', 'open'),
(5, 0, 'xxl', 'red', 5, 0, 0, 'y', 'open'),
(6, 0, 'xxl', 'red', 5, 0, 0, 'y', 'open'),
(7, 0, 'xxl', 'red', 5, 0, 0, 'y', 'open'),
(8, 0, 'xxl', 'red', 5, 0, 0, 'y', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `business_subscriptions`
--

CREATE TABLE `business_subscriptions` (
  `id` int(11) NOT NULL,
  `businessid` int(11) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `business_vendors`
--

CREATE TABLE `business_vendors` (
  `id` int(11) NOT NULL,
  `businessid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobileno` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `cityid` int(11) NOT NULL,
  `pincode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `talukaid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `stateid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `igap_productcategories`
--

CREATE TABLE `igap_productcategories` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `picpath` varchar(100) DEFAULT NULL,
  `srno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `igap_vendorproductpictures`
--

CREATE TABLE `igap_vendorproductpictures` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `picpath` varchar(500) NOT NULL,
  `srno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `igap_vendorproductpictures`
--

INSERT INTO `igap_vendorproductpictures` (`id`, `productid`, `title`, `picpath`, `srno`) VALUES
(3, 2, 'demo', 'businessproductpicture/vec1r.png', 1),
(4, 2, 'demo', 'businessproductpicture/6wstv.png', 1),
(5, 1, 'picture', 'vendorproducts/8gxj5.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `igap_vendorproducts`
--

CREATE TABLE `igap_vendorproducts` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `specification` text NOT NULL,
  `picpath` varchar(500) NOT NULL,
  `igapvendorid` int(11) NOT NULL,
  `igaproductcategoryid` int(11) NOT NULL,
  `mrp` double NOT NULL,
  `price` double NOT NULL,
  `weight` double DEFAULT NULL,
  `instock` varchar(150) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `igap_vendorproductvarieties`
--

CREATE TABLE `igap_vendorproductvarieties` (
  `id` int(11) NOT NULL,
  `productid` int(11) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `mrp` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `instock` varchar(3) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `igap_vendorproductvarieties`
--

INSERT INTO `igap_vendorproductvarieties` (`id`, `productid`, `color`, `size`, `weight`, `mrp`, `price`, `instock`, `status`) VALUES
(1, 1, 'red', 'XL', 100, 500, 400, 'N', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `igap_vendors`
--

CREATE TABLE `igap_vendors` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobileno` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `cityid` int(11) NOT NULL,
  `pincode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `talukas`
--

CREATE TABLE `talukas` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `districtid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `businessid` int(11) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `firebaseid` varchar(500) DEFAULT NULL,
  `billingaddressid` int(11) DEFAULT NULL,
  `shippingaddressid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `businessid`, `name`, `email`, `mobileno`, `password`, `firebaseid`, `billingaddressid`, `shippingaddressid`) VALUES
(7, 0, 'Abhijit', NULL, NULL, '123', NULL, NULL, NULL),
(8, 1, 'Abhijit', 'a@gmail.com', '9561210192', '123', 'safasdas', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `address1` varchar(500) DEFAULT NULL,
  `address2` varchar(500) DEFAULT NULL,
  `nearestspot` varchar(500) DEFAULT NULL,
  `city` varchar(500) DEFAULT NULL,
  `district` varchar(500) DEFAULT NULL,
  `state` varchar(500) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `addresstype` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_ads`
--
ALTER TABLE `business_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_affiliates`
--
ALTER TABLE `business_affiliates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_banners`
--
ALTER TABLE `business_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_blogcategories`
--
ALTER TABLE `business_blogcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_blogs`
--
ALTER TABLE `business_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_couponproducts`
--
ALTER TABLE `business_couponproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_coupons`
--
ALTER TABLE `business_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_productcategories`
--
ALTER TABLE `business_productcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_productpictures`
--
ALTER TABLE `business_productpictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_productreviews`
--
ALTER TABLE `business_productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_products`
--
ALTER TABLE `business_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_productvarieties`
--
ALTER TABLE `business_productvarieties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_subscriptions`
--
ALTER TABLE `business_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_vendors`
--
ALTER TABLE `business_vendors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_businessid` (`businessid`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `igap_productcategories`
--
ALTER TABLE `igap_productcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `igap_vendorproductpictures`
--
ALTER TABLE `igap_vendorproductpictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `igap_vendorproducts`
--
ALTER TABLE `igap_vendorproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `igap_vendorproductvarieties`
--
ALTER TABLE `igap_vendorproductvarieties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `igap_vendors`
--
ALTER TABLE `igap_vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `talukas`
--
ALTER TABLE `talukas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_ads`
--
ALTER TABLE `business_ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_affiliates`
--
ALTER TABLE `business_affiliates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_banners`
--
ALTER TABLE `business_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_blogcategories`
--
ALTER TABLE `business_blogcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `business_blogs`
--
ALTER TABLE `business_blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `business_couponproducts`
--
ALTER TABLE `business_couponproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_coupons`
--
ALTER TABLE `business_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_productcategories`
--
ALTER TABLE `business_productcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_productpictures`
--
ALTER TABLE `business_productpictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `business_productreviews`
--
ALTER TABLE `business_productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_products`
--
ALTER TABLE `business_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `business_productvarieties`
--
ALTER TABLE `business_productvarieties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `business_subscriptions`
--
ALTER TABLE `business_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `business_vendors`
--
ALTER TABLE `business_vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `igap_productcategories`
--
ALTER TABLE `igap_productcategories`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `igap_vendorproductpictures`
--
ALTER TABLE `igap_vendorproductpictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `igap_vendorproducts`
--
ALTER TABLE `igap_vendorproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `igap_vendorproductvarieties`
--
ALTER TABLE `igap_vendorproductvarieties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `igap_vendors`
--
ALTER TABLE `igap_vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `talukas`
--
ALTER TABLE `talukas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
