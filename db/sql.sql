
-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2019 at 04:19 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inv-erp1`
--

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `blocks-id` int(11) NOT NULL,
  `block-name` varchar(20) DEFAULT NULL,
  `block-desc` varchar(20) DEFAULT NULL,
  `inventories-id` int(11) NOT NULL,
  `inventories-block-id` int(11) NOT NULL,
  `inventories-user-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories-id` int(11) NOT NULL,
  `categorie-name` varchar(40) DEFAULT NULL,
  `categorie-english-name` varchar(40) DEFAULT NULL,
  `categorie-description` varchar(45) DEFAULT NULL,
  `products-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `currencies-id` int(11) NOT NULL,
  `currencies-name` varchar(20) DEFAULT NULL,
  `currencies-country` varchar(20) DEFAULT NULL,
  `currencies-code` varchar(20) DEFAULT NULL,
  `currencies-humorous` varchar(20) DEFAULT NULL,
  `exchange-price` varchar(20) DEFAULT NULL,
  `hieghest` varchar(20) DEFAULT NULL,
  `lowest-price` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer-id` int(11) NOT NULL,
  `customer-name` varchar(20) DEFAULT NULL,
  `customer-address` varchar(30) DEFAULT NULL,
  `customer-phone` int(20) DEFAULT NULL,
  `customer-email` varchar(20) DEFAULT NULL,
  `customer-moredetails` varchar(45) DEFAULT NULL,
  `id-order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `finv-to-sinv`
--

CREATE TABLE `finv-to-sinv` (
  `finv-to-sinv-id` int(11) NOT NULL,
  `fts-date` date DEFAULT NULL,
  `fts-type` varchar(20) DEFAULT NULL,
  `from-inv` varchar(20) DEFAULT NULL,
  `to-inv` varchar(20) DEFAULT NULL,
  `statement` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `inventories-id` int(11) NOT NULL,
  `inventories-location` varchar(20) DEFAULT NULL,
  `inventories-telephone` varchar(20) DEFAULT NULL,
  `inventories-manager` varchar(15) DEFAULT NULL,
  `blocks-id` int(11) NOT NULL,
  `user-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order-products`
--

CREATE TABLE `order-products` (
  `order-products-id` int(11) NOT NULL,
  `order-id` int(11) NOT NULL,
  `product-id` int(11) NOT NULL,
  `products-price-id` int(11) NOT NULL,
  `order-product-quan` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders-id` int(11) NOT NULL,
  `customer-id` int(11) NOT NULL,
  `order-details` int(11) NOT NULL,
  `order-scol` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `price-id` int(11) NOT NULL,
  `sector-price` float DEFAULT NULL,
  `consumer-price` float DEFAULT NULL,
  `retail-price` float DEFAULT NULL,
  `wholesale` float DEFAULT NULL,
  `cost-price` float DEFAULT NULL,
  `fialcost-price` float DEFAULT NULL,
  `currenc-type` varchar(10) DEFAULT NULL,
  `currencies-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product-id` int(11) NOT NULL,
  `product-name` varchar(30) DEFAULT NULL,
  `price-unit` varchar(20) DEFAULT NULL,
  `product-quantity` varchar(20) DEFAULT NULL,
  `categories-id` int(11) NOT NULL,
  `product-code` varchar(40) DEFAULT NULL,
  `english-name` varchar(20) DEFAULT NULL,
  `qmu-id` int(11) NOT NULL,
  `product-measurement` varchar(20) DEFAULT NULL,
  `manf-company` varchar(20) DEFAULT NULL,
  `manf-country` varchar(30) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `product-pack` varchar(20) DEFAULT NULL,
  `openning-quantity` varchar(20) DEFAULT NULL,
  `product-size` varchar(20) DEFAULT NULL,
  `product-image1` int(150) DEFAULT NULL,
  `product-image2` int(150) DEFAULT NULL,
  `product-image3` int(150) DEFAULT NULL,
  `price-id` int(11) NOT NULL,
  `max-quantity` varchar(20) DEFAULT NULL,
  `min-quantity` int(20) DEFAULT NULL,
  `product-col` varchar(20) DEFAULT NULL,
  `sup-to-store-id-store` int(11) NOT NULL,
  `sup-to-store-id-supplier` int(11) NOT NULL,
  `send-from-inv-id-spend` int(11) NOT NULL,
  `send-from-inv-id-customer` int(11) NOT NULL,
  `supplied-item-id` int(11) NOT NULL,
  `shelfs-id` int(11) NOT NULL,
  `product-inventory` varchar(20) DEFAULT NULL,
  `product-wieght` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qmu`
--

CREATE TABLE `qmu` (
  `qmu-id` int(11) NOT NULL,
  `qmu-name` varchar(20) DEFAULT NULL,
  `qmu-desc` varchar(20) DEFAULT NULL,
  `qmu-parts` varchar(20) DEFAULT NULL,
  `products-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shelfs`
--

CREATE TABLE `shelfs` (
  `shelfs-id` int(11) NOT NULL,
  `shelfs-name` varchar(40) DEFAULT NULL,
  `shelfs-desc` varchar(40) DEFAULT NULL,
  `blocks-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spend-from-inventories`
--

CREATE TABLE `spend-from-inventories` (
  `spend-from-inventoris-id` int(11) NOT NULL,
  `spend-from-invcol` varchar(45) DEFAULT NULL,
  `sfi-type` varchar(20) DEFAULT NULL,
  `sfi-date` varchar(45) DEFAULT NULL,
  `customer-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplied-items`
--

CREATE TABLE `supplied-items` (
  `si-id` int(11) NOT NULL,
  `si-bill` varchar(45) DEFAULT NULL,
  `equal-price` varchar(45) DEFAULT NULL,
  `si-date` date DEFAULT NULL,
  `sup-to-store-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `suppliers-id` int(11) NOT NULL,
  `supplier-name` varchar(20) DEFAULT NULL,
  `supplier-address` varchar(30) DEFAULT NULL,
  `suplier-email` varchar(20) DEFAULT NULL,
  `supplier-phone` varchar(15) DEFAULT NULL,
  `supplier-moredetails` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers-has-supplied-items`
--

CREATE TABLE `suppliers-has-supplied-items` (
  `suppliers-id` int(11) NOT NULL,
  `supplied-items-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supply-return`
--

CREATE TABLE `supply-return` (
  `supply-id` int(11) NOT NULL,
  `sr-cause` varchar(40) DEFAULT NULL,
  `sup-to-inv-id-to-store` int(11) NOT NULL,
  `sup-to-inv-id-suppliers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user-id` int(11) NOT NULL,
  `user-type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`blocks-id`),
  ADD KEY `inventories-id` (`inventories-id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories-id`),
  ADD KEY `products-id` (`products-id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`currencies-id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer-id`),
  ADD KEY `id-order` (`id-order`);

--
-- Indexes for table `finv-to-sinv`
--
ALTER TABLE `finv-to-sinv`
  ADD PRIMARY KEY (`finv-to-sinv-id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`inventories-id`),
  ADD KEY `blocks-id` (`blocks-id`),
  ADD KEY `inventories_ibfk_1` (`user-id`);

--
-- Indexes for table `order-products`
--
ALTER TABLE `order-products`
  ADD PRIMARY KEY (`order-products-id`),
  ADD KEY `order-products_ibfk_1` (`order-id`),
  ADD KEY `product-id` (`product-id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders-id`),
  ADD UNIQUE KEY `customer-id` (`customer-id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`price-id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product-id`),
  ADD KEY `categories-id` (`categories-id`),
  ADD KEY `products_ibfk_1` (`price-id`),
  ADD KEY `qmu-id` (`qmu-id`),
  ADD KEY `shelfs-id` (`shelfs-id`),
  ADD KEY `supplied-item-id` (`supplied-item-id`);

--
-- Indexes for table `qmu`
--
ALTER TABLE `qmu`
  ADD PRIMARY KEY (`qmu-id`),
  ADD KEY `products-id` (`products-id`);

--
-- Indexes for table `shelfs`
--
ALTER TABLE `shelfs`
  ADD PRIMARY KEY (`shelfs-id`),
  ADD KEY `blocks-id` (`blocks-id`);

--
-- Indexes for table `spend-from-inventories`
--
ALTER TABLE `spend-from-inventories`
  ADD PRIMARY KEY (`spend-from-inventoris-id`),
  ADD KEY `customer-id` (`customer-id`);

--
-- Indexes for table `supplied-items`
--
ALTER TABLE `supplied-items`
  ADD PRIMARY KEY (`si-id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`suppliers-id`);

--
-- Indexes for table `suppliers-has-supplied-items`
--
ALTER TABLE `suppliers-has-supplied-items`
  ADD PRIMARY KEY (`suppliers-id`),
  ADD KEY `suppliers-has-supplied-items_ibfk_1` (`supplied-items-id`);

--
-- Indexes for table `supply-return`
--
ALTER TABLE `supply-return`
  ADD PRIMARY KEY (`supply-id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user-id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `blocks-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `currencies-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `finv-to-sinv`
--
ALTER TABLE `finv-to-sinv`
  MODIFY `finv-to-sinv-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `inventories-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order-products`
--
ALTER TABLE `order-products`
  MODIFY `order-products-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `price-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qmu`
--
ALTER TABLE `qmu`
  MODIFY `qmu-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shelfs`
--
ALTER TABLE `shelfs`
  MODIFY `shelfs-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spend-from-inventories`
--
ALTER TABLE `spend-from-inventories`
  MODIFY `spend-from-inventoris-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplied-items`
--
ALTER TABLE `supplied-items`
  MODIFY `si-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `suppliers-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers-has-supplied-items`
--
ALTER TABLE `suppliers-has-supplied-items`
  MODIFY `suppliers-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supply-return`
--
ALTER TABLE `supply-return`
  MODIFY `supply-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`categories-id`) REFERENCES `products` (`categories-id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product-id`) REFERENCES `supplied-items` (`si-id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
