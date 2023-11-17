-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 27, 2022 at 02:23 PM
-- Server version: 10.3.36-MariaDB-cll-lve
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smmviral_technicalviral`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_providers`
--

CREATE TABLE `api_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(15,5) DEFAULT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'standard'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `ids`, `uid`, `question`, `answer`, `sort`, `status`, `created`, `changed`) VALUES
(38, '99d9f802cb45630c350915ee25c39d1a', 40, 'What is an SMM Panel?', '<p xss=\"removed\"><span>SMM Panel is a Social Media Marketing Website. </span><span>which provides you Instagram. Youtube, Facebook, TikTok followers, likes, subscriber etc in just few dollars or rupees. smm panel make your profiles high quality with enough likes and followers.</span></p>', 1, 1, '2020-06-23 08:24:11', '2020-06-23 08:53:50'),
(39, '8d8b2961fc920b446c73432aede91880', 40, 'What is an SMM Service?', '<p><span>SMM Service is called social Media Marketing Services, in Smm websites you can see Lots of Social Media Services. For example instagram followers likes and many more, at very low price and quality of followers, likes, views, subscriber are Best of Best, which helps in your business and profiles to grow.</span></p>', 2, 1, '2020-06-23 08:26:38', '2020-06-23 08:55:23'),
(40, 'c021d1a54522de693902af864bb48b64', 40, 'Why choose CheapestPanel?', '<p><span>In CheapestPanel Panel you will get 24/7 Support. Our all listed services are very affordable with excellent quality. </span>CheapestPanel is updating services on daily basis for clients satisfaction. Hence you will find always positive results from us.</p>', 3, 1, '2020-06-23 08:34:21', '2020-06-23 08:56:17'),
(41, 'c701c4d24ee88788b8a18d59f100b5f2', 40, 'Which is the fastest growing SMM Panel?', '<p><span>CheapestPanel.in was launched in 2017, It is the fastest growing panel & </span><span>Cheapest SMM Panel in India with 100% High Quality services for all social networks. Join CheapestPanel.in For Facebook, Instagram, Twitter, And YouTube, TikTok today!</span></p>', 4, 1, '2020-06-23 08:49:46', '2020-06-23 08:56:58'),
(42, 'b8a189e9046133d1dd694f1404198da4', 40, 'How to add funds on CheapestPanel?', '<p>Simply go to add funds and select your prefered mode of payment, currently we have ( <strong>Paytm QR, Razorpay, PhonePay, Gpay, Netbanking, Visa, Mastercard, Maestero, RuPay, American Express, Bhim UPI, Debit Card, Credit Card</strong> ) For manual or other mode of payments like Bank Transfer, NEFT, IMPS raise a separate ticket.</p>\r\n<p>Note: PayPal & Stripe checkout is enabled for selected users only, Raise a ticket to get it activated.</p>', 5, 1, '2020-06-23 13:01:35', '2020-10-04 21:43:39'),
(43, '4d1ec06b7ac26a6305136db80fba8e9a', 40, 'What  is Partial Status?', '<p><span>Partial Status is when we partially refund the remains of an order. Sometimes for some reasons we are unable to deliver a full order, so we refund you the remaining undelivered amount. Example: You bought an order with quantity 10 000 and charges 10$, let\'s say we delivered 9000 and the remaining 1000 we couldn\'t deliver, then we will \"Partial\" the order and refund you the remaining 1000 (1$ in this example).</span></p>', 6, 1, '2020-06-23 13:03:10', '2020-06-23 13:03:10'),
(44, 'a75e69e9502b15015626610a468f8df2', 40, 'What is Drip Feed?', '<p><span>Drip Feed is a service that we are offering so you would be able to put the same order multiple times automatically. Example: let\'s say you want to get 1000 likes on your Instagram Post but you want to get 100 likes each 30 minutes, you will put Link: Your Post Link Quantity: 100 Runs: 10 (as you want to run this order 10 times, if you want to get 2000 likes, you will run it 20 times, etc…) Interval: 30 (because you want to get 100 likes on your post each 30 minutes, if you want each hour, you will put 60 because the time is in minutes) P.S: Never order more quantity than the maximum which is written on the service name (Quantity x Runs), Example if the service\'s max is 4000, you don’t put Quantity: 500 and Run: 10, because total quantity will be 500x10 = 5000 which is bigger than the service max (4000). Also never put the Interval below the actual start time (some services need 60 minutes to start, don’t put Interval less than the service start time or it will cause a fail in your order).</span></p>', 7, 1, '2020-06-23 13:04:51', '2020-06-23 13:04:51'),
(45, 'f8a2c7375081ce8988bf66bbbe9bb355', 40, 'Can i get discount?', '<p><span>Yes, discounts are applicable for users who spend 100$ a day. We provide reseller discount also.</span></p>', 8, 1, '2020-06-23 13:07:31', '2020-10-04 21:51:28'),
(46, 'eea3d653e60d2c487e2893fb585344e9', 40, 'Do you accept Paytm?', '<p><span>Yes, we do accept PAYTM!</span></p>', 9, 1, '2020-06-23 13:09:13', '2020-06-23 13:09:13'),
(47, '4a91146dbc62afcaa0c64c0650faec23', 40, 'Do you accept Paypal?', '<p><span>Yes, we do accept PAYPAL!</span></p>\r\n<p><span>Min- 5$</span></p>\r\n<p><span>Max- 10$</span></p>', 10, 1, '2020-06-23 13:09:55', '2020-10-04 21:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `general_custom_page`
--

CREATE TABLE `general_custom_page` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `pid` int(1) DEFAULT 1,
  `position` int(1) DEFAULT 0,
  `name` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_file_manager`
--

CREATE TABLE `general_file_manager` (
  `id` int(11) NOT NULL,
  `ids` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `file_name` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `file_type` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `file_ext` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `file_size` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `is_image` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_file_manager`
--

INSERT INTO `general_file_manager` (`id`, `ids`, `uid`, `file_name`, `file_type`, `file_ext`, `file_size`, `is_image`, `image_width`, `image_height`, `created`) VALUES
(316, '0c037861e5dc297f2adc2dd76686377a', 38, '0f825824fa982dcac4bd733de1f94b11.png', 'image/png', 'png', '2.19', '1', 225, 225, '2020-04-30 16:49:18'),
(317, 'b5b7274f1b63c717c7351538074e6150', 38, '2ad9194ca57dfd8f76b2a82ad6a6266b.png', 'image/png', 'png', '10.69', '1', 600, 200, '2020-04-30 16:49:25'),
(318, '5dd8049be58d3e462d3d4d016aa465c3', 38, '8a267ee14b24cd82ce40f92e99c3f674.png', 'image/png', 'png', '10.69', '1', 600, 200, '2020-04-30 16:49:42'),
(319, 'd42879a3e8dbc69cd89986b5dd9bf3ce', 38, '3530c465b0d02a980703f66c1c16368d.PNG', 'image/png', 'png', '27.93', '1', 900, 200, '2020-05-05 09:59:38'),
(320, 'bbe5af404ea726f2d75c32eebae2507c', 38, 'f67aa99257ae32085c1472d778c8cceb.PNG', 'image/png', 'png', '27.93', '1', 900, 200, '2020-05-05 10:01:23'),
(321, 'b96b5fe88d6e491d6165247d7c94c4db', 38, '667965336f2064150c11dbf7b3b68bde.PNG', 'image/png', 'png', '27.93', '1', 900, 200, '2020-05-06 13:01:53'),
(322, 'd11083fa19c258d05a188d55b037081e', 38, '50f24e4c75b2ec89f6fe0198a770078c.JPG', 'image/jpeg', 'jpg', '22.53', '1', 900, 200, '2020-05-06 13:46:51'),
(323, '82ff38485399962bbb050e60ea57f766', 38, '77db8ba89676413b31ee8721f10efc98.png', 'image/png', 'png', '40.32', '1', 900, 200, '2020-05-06 13:48:12'),
(324, '2242e5bc57e0430419a6bc4ea8e6e1c3', 38, '3bc4fadfa26d461037ee8ec32f7abbe3.png', 'image/png', 'png', '2.19', '1', 225, 225, '2020-05-08 20:44:56'),
(325, '18e304b2410772be4f9dc289235a8f1f', 38, '1012ca5bd492179b0b71dc14f2754566.PNG', 'image/png', 'png', '27.93', '1', 900, 200, '2020-05-08 20:45:17'),
(326, 'a0e1bc43d892a438cb01b6d88b4a3924', 38, '3f6e66864658b4892dc05c01a91021c8.PNG', 'image/png', 'png', '27.93', '1', 900, 200, '2020-05-08 20:45:54'),
(327, '2e5dcf8d71863b0fd5fbdd2ece1e49ca', 38, '7cbe51d356bcce8714b8f23344d1aad6.PNG', 'image/png', 'png', '27.93', '1', 900, 200, '2020-05-08 20:46:06'),
(328, '7e1e5a55b1ed86d0f7ee2eba4903d96e', 38, '1459842c71b1b06343be728f721dc560.PNG', 'image/png', 'png', '27.93', '1', 900, 200, '2020-05-08 20:46:25'),
(329, '5006857d49f7f1fd12c0699bc1b7d412', 38, 'ec2463b921d5ba20243f97480e465a19.JPG', 'image/jpeg', 'jpg', '22.53', '1', 900, 200, '2020-05-08 21:47:30'),
(330, '4e1424b6a51911167145089e4dfd408b', 38, 'e0300eeedfc942997353750fe6ddf931.PNG', 'image/png', 'png', '27.93', '1', 900, 200, '2020-05-08 21:54:36'),
(331, 'a353c95d5c067f7076572fa2166e7995', 38, 'bece2822c27c99128009fac5ede0f649.png', 'image/png', 'png', '40.32', '1', 900, 200, '2020-05-09 07:38:51'),
(0, '2124462e2cd53437eb5ef862c8cfe1c6', 40, '413e402af2b359cae09fe3881356a3a0.png', 'image/png', 'png', '159.3', '1', 958, 502, '2020-10-22 17:52:11');

-- --------------------------------------------------------

--
-- Table structure for table `general_lang`
--

CREATE TABLE `general_lang` (
  `id` int(11) NOT NULL,
  `ids` varchar(100) DEFAULT NULL,
  `lang_code` varchar(10) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_lang`
--

INSERT INTO `general_lang` (`id`, `ids`, `lang_code`, `slug`, `value`) VALUES
(1, 'f28a35e50b429b0af02740881abeeb82', 'en', 'coinbase_confirm_form', 'Coinbase Confirm Form'),
(2, '160709899ed742a025013e5534986282', 'en', 'coinbase_confirm_form_note', 'After Click \"Submit\", you will be redirected to Coinbase Commerce to commplete your Deposit payment securely.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(3, '0b1d052f466e94420567ce80726bd807', 'en', 'coinpayments_integration', 'Coinpayments Integration'),
(4, 'f28aa3101f125f164068d4055d5aaa5c', 'en', 'coin_acceptance_settings', 'Coin Acceptance Settings:'),
(5, '089f22d5f0e2a324e4aa47024755a00f', 'en', 'make_sure_the_list_of_coins_have_the_enabled_status_in', 'Make sure the list of coins have the \'Enabled\' status in'),
(6, '487f68c76385b731ce8cb6f3d228dd34', 'en', 'coinpayments_confirm_form', 'Coinpayments confirm form'),
(7, 'bc76671fa39c7ad577bc8649fe3ce892', 'en', 'choose_your_coin', 'Choose Your Coin'),
(8, '7efbaf7c7d60d33eb4fbae2e95a562b8', 'en', 'Statistics', 'Dashboard'),
(9, 'ac9e050adf6d875b0d9f3b20bfb90fc7', 'en', 'Services', 'Services'),
(10, '72f9209de18cdb09dfb7e6a422af881e', 'en', 'Order', 'Order'),
(11, '053391387024e621b9025dc687813d17', 'en', 'order_logs', 'Order Logs'),
(12, '44f863fd35b80bee458722f54b300bab', 'en', 'New_order', 'New Order'),
(13, 'be836a039bc5516620727725ba99fe07', 'en', 'API', 'API'),
(14, '55942ea92260564d8be609f6807d563f', 'en', 'user_manager', 'User manager'),
(15, 'f2f79af67e080e0c83bf2442a2366ff7', 'en', 'user_activity_logs', 'User Activity Logs'),
(16, '383d3724ab208ef953aefa86e0d46cce', 'en', 'banned_ip_address_list', 'Banned IP Address List'),
(17, '31a918f839cabd0dd8b491e615c255e2', 'en', 'system_settings', 'System Settings'),
(18, '02e6a6a5fbfea433c47764dff016d1c2', 'en', 'API_providers', 'API Providers'),
(19, '2c025f26187641d11ba3958dfb654929', 'en', 'Language', 'Language'),
(20, '6f2e6554abe9bd4078ae4e97e100763b', 'en', 'Documentation', 'Documentation'),
(21, 'c46ac67c55b6c05b19e3e47836ff962a', 'en', 'Support', 'Support'),
(22, '9ca85bb237d73afc3a2829bfdde008e7', 'en', 'Profile', 'Profile'),
(23, '2a6e55b57bb2d3353fb69886c6969472', 'en', 'Admin_account', 'Admin account'),
(24, 'b2075e404292e8521864620e157baee1', 'en', 'Add_funds', 'Add funds'),
(25, 'f8dfc1f9c5ab2c2f053f5cb7cedc040f', 'en', 'Add_money', 'Add money'),
(26, '42b0921d0dad40bd77a51090239446c3', 'en', 'Hi', 'Hi'),
(27, '58ea4781e45e6eee9f8663472f6419a5', 'en', 'Enter_license', 'Enter license'),
(28, '5d986e4f904cf9d445cea4dac3fcd76e', 'en', 'Quick_links', 'Quick Links'),
(29, '7487e5f89dbc1f5f5abb9dba5330ecc4', 'en', 'terms__conditions', 'Terms & Conditions'),
(30, '49af3ec982113058e9449d82994558a3', 'en', 'Cookie_Policy', 'Cookie Policy'),
(31, 'b00b664aa53bd703792a0ba2875a9623', 'en', 'Home', 'Home'),
(32, '555cfedaf21906335268b89dae2f9182', 'en', 'Copyright', 'Copyright © 2020'),
(33, '3c8cc7989c90f6ecd76c54dae967dd83', 'en', 'add_new', 'Add new'),
(34, '501936c77e168a77fb8cba840df944ed', 'en', 'Lists', 'Lists'),
(35, '4d24c32e4dbf80e7b81eee36c31bc140', 'en', 'No_', 'No.'),
(36, '62c06231000fe163e74fd5f840baa171', 'en', 'Created', 'Created'),
(37, 'f4c973c9a2de4bdad95dfabb24da45c9', 'en', 'Updated', 'Updated'),
(38, 'c500b231f151f30f86ab46d38d19cf0e', 'en', 'Status', 'Status'),
(39, '8eb2e86b8d702a55efc4edab8a353d6f', 'en', 'Action', 'Action'),
(40, '09f3e6f39b4a1364fd87b66db6a6ea53', 'en', 'Description', 'Description'),
(41, 'd90b648f9158a7829e41ba444c0b6e4b', 'en', 'Edit', 'Edit'),
(42, 'c84e29af27b981a8515909efa0982fad', 'en', 'Delete', 'Delete'),
(43, '92505917d43d94337ddc13b8a6cb41ce', 'en', 'Active', 'Active'),
(44, '4a2e18274ab967e763325e8dadcafce5', 'en', 'Deactive', 'Deactive'),
(45, '5839737e59fb547f904fee3d5262d33b', 'en', 'Yes', 'Yes'),
(46, '9c8107e94ed38c45ffc2537f6bddd0c2', 'en', 'No', 'No'),
(47, 'cecaea6294a5a9d958e63f8c72c3bc4c', 'en', 'Email', 'E-mail'),
(48, '4d426c02c8ccf74cde78c88e1e09bbcd', 'en', 'Timezone', 'Time zone'),
(49, 'eadadac9109dca8dd040a9f32c33f660', 'en', 'Password', 'Password'),
(50, '4d788df941102161805d86db2e470570', 'en', 'Confirm_password', 'Confirm Password'),
(51, '0437828b6412b928c78a85113588322d', 'en', 'Save', 'Save'),
(52, '69e87e6dff300c3acdb778cf8e78b7f9', 'en', 'look_like_there_are_no_results_in_here', 'Look like there are no results in here!'),
(53, '8b5e49fb3ea889c351028f83ed9d04f0', 'en', 'Subject', 'Subject'),
(54, '2d700000c35a821596bf95032f7b1d56', 'en', 'Content', 'Content'),
(55, '65c5186c6ff206fe1f166441a26dbc46', 'en', 'Message', 'Message'),
(56, '332518335d840df8c447b8b57d5d7d1a', 'en', 'Submit', 'Submit'),
(57, '70a2f4b540dacb0b66e4acc9d336bfb8', 'en', 'Cancel', 'Cancel'),
(58, '9ccca9721967497da6eeacb2468d2966', 'en', 'Password_is_required', 'Password is required'),
(59, '0b62b938239729bd4fc96b50eed1e8b5', 'en', 'email_is_required', 'Email is required'),
(60, 'c299f157a6ea58ef125f39bde1f6a13f', 'en', 'invalid_email_format', 'Invalid email format'),
(61, '473ae4c50a6b0a429d02ed061f1b0a29', 'en', 'Password_must_be_at_least_6_characters_long', 'Password must be at least 6 characters long'),
(62, '4fbc9338ecf65320d6dbe98fd320507e', 'en', 'Password_does_not_match_the_confirm_password', 'Password does not match the confirm password'),
(63, '3d0ab22db48f8d5fe5f500be7d9a0ddf', 'en', 'There_was_an_error_processing_your_request_Please_try_again_later', 'There was an error processing your request. Please try again later                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(64, '63af7d027382fbb68179a6bf0b16e704', 'en', 'Update_successfully', 'Update successfully'),
(65, 'e3180aa7947e09f79ef37a75a1c788a2', 'en', 'Deleted_successfully', 'Deleted successfully'),
(66, 'fc14c536abbd59122a205a1adeb561f4', 'en', 'the_item_does_not_exist_please_try_again', 'The item does not exist. Please try again'),
(67, '4f0f06a326df9b84ff54092d6c43d7bb', 'en', 'Are_you_sure_you_want_to_delete_this_item', 'Are you sure you want to delete this item?'),
(68, 'e37df2d3f3c3990fe722c3b706668562', 'en', 'Are_you_sure_you_want_to_delete_all_items', 'Are you sure you want to delete all items?'),
(69, '668b88655160105e89c8065315bbd92e', 'en', 'please_choose_at_least_one_item', 'Please choose at least one item'),
(70, 'c9000bc5f45fe0752bbfcc857a6fe346', 'en', 'Search_for_', 'Search for...'),
(71, '73d0c582742db61479d29d8141ae16bd', 'en', 'Sign_out', 'Sign out'),
(72, 'c0df2cbcf8d3e08b814827141903eb5a', 'en', 'Sign_Up', 'Sign Up'),
(73, '6f3725769303f62e07b49a5d6052a668', 'en', 'Login', 'Login'),
(74, 'a0940e37061f0e1b45eca5834b95ea57', 'en', 'note', 'Note:'),
(75, 'fe3e2a356d61ea8684b866b8f3fd08b8', 'en', 'Facebook', 'Facebook'),
(76, 'bb8b6a80872640c2e66d3296ba448b53', 'en', 'Instagram', 'Instagram'),
(77, '1684c1e178ffaf07847814d9f14f3109', 'en', 'Pinterest', 'Pinterest'),
(78, '51fea886f14e6cda14d4770a72154727', 'en', 'Twitter', 'Twitter'),
(79, '1692bf0ca82c0d6885475decc275db28', 'en', 'Paypal', 'Paypal'),
(80, 'b02b74b1aa85c612b232d25729b80bc7', 'en', '2Checkout', '2Checkout'),
(81, 'bed7f35f5894ce330d6e365d0d05016d', 'en', 'Stripe', 'Stripe'),
(82, '8ec08141e39fe74d12f7986da59e7da5', 'en', 'users', 'Users'),
(83, 'bf8b3e1fbdc950ed44401a12feab6904', 'en', 'admin', 'Admin'),
(84, 'e0c5f148169a3a534961b45fc8e94817', 'en', 'regular_user', 'Regular User'),
(85, 'b8c92cebbdb82ea37de80f3905e7114f', 'en', 'Funds', 'Funds'),
(86, 'd06d7165cb1ade0cac54787c0199e634', 'en', 'User_profile', 'User profile'),
(87, '35748e491930efa98fc62181daa09821', 'en', 'send_mail', 'Send Mail'),
(88, '80136e3eea989ee82a95b4a31204294d', 'en', 'Edit_user', 'Edit user'),
(89, '09706c79827a455bf659449b4c19851f', 'en', 'basic_information', 'Basic Information'),
(90, '81015ce1113e68797b3d756120cea0ac', 'en', 'first_name', 'First name'),
(91, 'da491c3915de84d2e770b578f5c4eea0', 'en', 'last_name', 'Last name'),
(92, '85ae20d45385c0d2370bf5963c72ec5a', 'en', 'account_type', 'Account type'),
(93, 'e85ae71c02ba97748507a11c48a61dd1', 'en', 'note_if_you_dont_want_to_change_password_then_leave_these_password_fields_empty', 'Note: If you don\'t want to change password then leave these password fields empty!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(94, '467db9f74cf3149b61bdce8fcceccd29', 'en', 'more_informations', 'More Informations'),
(95, '0c75309a62924c7d5bd04b87175827ac', 'en', 'whatsapp_number', 'Skype ID'),
(96, 'f7fd9d9b0bd9b94bd70ccfc74722ac59', 'en', 'Website', 'Website'),
(97, '173996bfb2f09ee2e44d74f6a1fb1b94', 'en', 'Phone', 'Phone'),
(98, 'd9cb0fd3fba85afeb4624eeedee882ae', 'en', 'Skype_id', 'Whatsapp Number'),
(99, '90632afaa6442cec5de8dd2114050331', 'en', 'Address', 'Address'),
(100, 'c10b94d68862b69a2f81c45efbeda4d5', 'en', 'note_if_you_dont_want_add_more_information_then_leave_these_informations_fields_empty', 'Note: If you don\'t want add more information then leave these informations fields empty!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(101, '5116ec4e960d86a37ac0fbed0d6803c1', 'en', 'To', 'To'),
(102, 'aea8e9eb5eca81cd57c779e80236a180', 'en', 'please_fill_in_the_required_fields', 'Please fill in the required fields'),
(103, '3069cb03ebf143f3a37c4ee337fb929d', 'en', 'An_account_for_the_specified_email_address_already_exists_Try_another_email_address', 'An account for the specified email address already exists. Try another email address                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(104, 'bd1d509552fc6d39a4e2d9e2ab28f644', 'en', 'subject_is_required', 'Subject is required'),
(105, 'a068ba3e6149397869a5e8ba63e664f6', 'en', 'message_is_required', 'Message is required'),
(106, 'c2d82814a715f62343fa914e2074ffcf', 'en', 'description_is_required', 'Description is required'),
(107, '27aa19ebe2a1a75389d315aec699d05c', 'en', 'your_email_has_been_successfully_sent_to_user', 'Your email has been successfully sent to user'),
(108, 'd14ddb26e9e77dfd457714a510cbd3e8', 'en', 'the_account_does_not_exists', 'The account does not exists'),
(109, '810c1bc091151fe49e4bf87e5f4aa073', 'en', 'the_input_value_was_not_a_correct_number', 'The input value was not a correct number'),
(110, '723a13ce2e2159400cc5796f288da113', 'en', 'can_not_delete_administrator_account', 'Can not delete Administrator account'),
(111, 'c0b7cc003e22cc1c30dcfe61857ad119', 'en', 'custom_rate', 'Custom rate(%)'),
(112, 'ca68e1bc242160327e324c60100e4dd5', 'en', 'history_ip', 'history_ip'),
(113, 'fb663b0669f4a8e783c6d1d9426dce45', 'en', 'view_user', 'View User'),
(114, 'def199dc4cf910bbc1f7a93741d74902', 'en', 'Back_to_Admin', 'Back to Admin'),
(115, '864792f79e2e3acbc90f77e368504725', 'en', 'Settings', 'Settings'),
(116, '2378f7d7094808815a281af64ffc7ed6', 'en', 'general_settings', 'General Settings'),
(117, '696bc89514e7889428100908d4671ca3', 'en', 'website_setting', 'WebSite Setting'),
(118, '63c11f3e98714690ee7061989e414b6e', 'en', 'Logo', 'Website Logo'),
(119, '83132044a6fea7ddeb092916dc0ab3be', 'en', 'terms__policy_page', 'Terms & Policy page'),
(120, '5531f7e24da9344f8ba0c54fb68cc22c', 'en', 'default_setting', 'Default Setting'),
(121, 'fb80710cd1fbaba5a73d12d14953af6b', 'en', 'Other', 'Other'),
(122, '92f17bc856c805b7b32cce82655d3746', 'en', 'email_setting', 'Email Setting'),
(123, '5dacc38f680991831e6b321fad3c5379', 'en', 'email_template', 'Email Template'),
(124, '493c7f886b519dd01edfd718b773e40b', 'en', 'integrations', 'Integrations'),
(125, '8c7f3951afce29370da0471d1972eaf9', 'en', 'Payment', 'Payment'),
(126, '1c7b77de048b444481f37b95e7ca090f', 'en', 'Maintenance_mode', 'Maintenance mode'),
(127, 'd34014fc3d7c77538cde1ca1c968c68d', 'en', 'link_to_access_the_maintenance_mode', 'Make sure you remmeber this link to get access Maintenance mode before you activate:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(128, '508fd2712321a9c416fd591dcefe7122', 'en', 'website_name', 'Website name'),
(129, '4898de284dcffc9b89ed665f66f4d656', 'en', 'website_description', 'Website description'),
(130, 'e247528df0cc80eacef81a07cde7c179', 'en', 'website_keywords', 'Website keywords'),
(131, '480ea8e49d9cbdb09a0442b7645ef40b', 'en', 'website_title', 'Website title'),
(132, 'e5d553305be4016d5c9d64c145348d07', 'en', 'website_logo', 'Website Logo'),
(133, 'bce811f7da6eab63845f376f8c0c7fb7', 'en', 'website_favicon', 'Website favicon'),
(134, 'd3a03a349aa495f0dbf800780f8e811b', 'en', 'website_logo_white', 'Website logo (white)'),
(135, '9bdbb7e583051dba865b84ab64f6ee64', 'en', 'terms__policy', 'Terms & Policy'),
(136, '3a5cad96c6c0cc0aa3663b1a3fe34e17', 'en', 'content_of_terms', 'Content of Terms'),
(137, 'ac0d216384223ecb90b52bffd415f6b5', 'en', 'content_of_policy', 'Content of Policy'),
(138, '74f25465ada89f2eef18b476bfa9b5ae', 'en', 'other_settings', 'Other settings'),
(139, '0187155a3123ca926789a6262476fe67', 'en', 'enable_https', 'Enable HTTPS'),
(140, 'c18a06103be6b23404cad03c8cba15e6', 'en', 'emded_code', 'Emded Code'),
(141, '3b024a179d501d21ec0d44d34448b437', 'en', 'social_media_links', 'Social Media links'),
(142, 'b1b922bc47a61120eb2c3bc2162ceed5', 'en', 'note_please_make_sure_the_ssl_certificate_has_the_active_status_in_your_hosting_before__you_activate', 'Note: Please make sure the SSL certificate has the \'Active\' status in your hosting before  you activate.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(143, '4d7dfab432f717e20f77a6078d650d9f', 'en', 'note_only_supports_javascript_code', 'Note: Only supports Javascript code '),
(144, '81b527948a08aa15341c9ae69825ed49', 'en', 'contact_informations', 'Contact Informations'),
(145, '5af81eae2b0c4d2d3b3feb667e46ce77', 'en', 'working_hour', 'Working Hour'),
(146, '2f6280e6c8a9bb7ffd3c30efa1ae818c', 'en', 'Tel', 'Skype'),
(147, '8063209baddc0aec1604923b9aec381b', 'en', 'email_notifications', 'Email notifications'),
(148, '6dd9462d1a72d57e85dc33b5cd712456', 'en', 'new_user_welcome_email', 'New User Welcome Email'),
(149, '2a6540e45c82ab614479d5719ebdf1fa', 'en', 'new_user_notification_email', 'New User Notification Email'),
(150, '9abd033079754ea705a4de2a7a2567a2', 'en', 'receive_notification_when_a_new_user_registers_to_the_site', '(Receive notification when a new user registers to the site)'),
(151, 'e587709fc7d4e31615c04123a6009974', 'en', 'payment_notification_email', 'Payment Notification Email'),
(152, 'a093a6f8d087eb1255f72c66134b4272', 'en', 'send_notification_when_a_new_user_add_funds_successfully_to_user_balance', '(Send notification when a new user add funds successfully to user balance)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(153, 'dc2c2583c39c4cb453e22ad7b98f39c9', 'en', 'ticket_notification_email', 'Ticket Notification Email'),
(154, '6f39469f056d65d64b9f000f09fff36a', 'en', 'send_notification_to_user_when_admin_reply_to_a_ticket', '(Send notification to user when Admin reply to a ticket)'),
(155, 'cafe40434bcc4a98d0a1705686eb381a', 'en', 'order_notification_email', 'Order Notification Email'),
(156, '8139c4897d3a5ff100e818209b5a516e', 'en', 'receive_notification_when_a_user_place_order_successfully', '(Receive notification when a user place order successfully)'),
(157, '2b2f38a4ed6d4fcd6cff511031289fe2', 'en', 'From', 'From'),
(158, 'c0b0714e165c754114b35e0143da252b', 'en', 'your_name', 'Your name'),
(159, '474a33326058beae64aad6e041e69251', 'en', 'email_protocol', 'Email protocol'),
(160, 'f5f164ebab3420dd731872aa2763db8f', 'en', 'php_mail_function', 'PHP mail function'),
(161, '13581e7a7588b328df9b1dd450cc1654', 'en', 'recommended', '(Recommended)'),
(162, '2ef5fe4a6a3eaa7c5f79ed9df35408e1', 'en', 'sometime_email_is_going_into__recipients_spam_folders_if_php_mail_function_is_enabled', 'Sometime, email is going into  recipients\' spam folders if PHP mail function is enabled                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(163, 'b338027280df964847a6372188c921ac', 'en', 'SMTP', 'SMTP'),
(164, '73486036200f7cbeb3643e99e6392a88', 'en', 'smtp_server', 'SMTP Server'),
(165, '2877b22666a1c00aa2479ed6f2466216', 'en', 'smtp_port', 'SMTP Port'),
(166, '2e5f849e97219fd8a17ddb64578922ed', 'en', 'smtp_encryption', 'SMTP Encryption'),
(167, 'b59d89b5461274658ddbfbe57a55e309', 'en', 'smtp_username', 'SMTP Username'),
(168, '6c352598d7c62be86362a54f8decd826', 'en', 'smtp_password', 'SMTP Password'),
(169, 'ebcb0c6ba0232df5773f06e2023b5666', 'en', 'password_recovery', 'Password Recovery'),
(170, 'c4f7a5938de4cfc6bb0b93bb0fbbec57', 'en', 'you_can_use_following_template_tags_within_the_message_template', 'You can use following template tags within the message template:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(171, '2bfb43328aa3bfb30c4b883d4d14db6c', 'en', 'displays_the_users_first_name', 'displays the user\'s first name'),
(172, '4c006523a6dbe197eafbbd2db3825e71', 'en', 'displays_the_users_last_name', 'displays the user\'s last name'),
(173, 'ee9c580590413f7679ff59ddcf63164f', 'en', 'displays_the_users_email', 'displays the user\'s email'),
(174, 'a2c00c15ae5207610b413893974f3b70', 'en', 'displays_the_users_timezone', 'displays the user\'s timezone'),
(175, 'f8b0ab05d4ad970f3b7d9e48a8813831', 'en', 'displays_recovery_password_link', 'displays recovery password link'),
(176, '727de795e1f23320182836a69a64856a', 'en', 'payment_integration', 'Payment Integration'),
(177, '676d2b07dd948696080220b5b1084d50', 'en', 'currency_setting', 'Currency Setting'),
(178, '88998e843f1f4f37ffb8eb448c44184b', 'en', 'currency_code', 'Currency Code'),
(179, 'a8993364230ef39cebb4c6dffd6f0f3a', 'en', 'thousand_separator', 'Thousand Separator'),
(180, '71a16ef427e0b102f70d2cf915fdb056', 'en', 'decimal_separator', 'Decimal Separator'),
(181, 'f55ab1d1c7416f183ed97e59500f128d', 'en', 'Dot', 'Dot'),
(182, 'a90c4e9c4928217013275ab330381137', 'en', 'Comma', 'Comma'),
(183, '4b5bb427fb422f07bc35e646d582ce02', 'en', 'Space', 'Space'),
(184, '1abc3254de1ed5b563c7bdb387d425fc', 'en', 'auto_currency_converter', 'Auto Currency converter'),
(185, '9ab710199193d90245f31491731ceda9', 'en', 'applying_when_you_fetch_sync_all_services_from_smm_providers', '(Applying when you fetch, sync all services from SMM providers)'),
(186, 'a8d558eb09e8d00cfb15460987da1d24', 'en', '1_original_currency', '1 Original currency'),
(187, '5bb5517aaff63734f8ac8603fc87f480', 'en', 'new_currency', 'New Currency'),
(188, '58a1401852eed5557fffa9c2c67de1a9', 'en', 'if_you_dont_want_to_change_currency_rate_then_leave_this_currency_rate_field_to_1', 'If you don\'t want to change Currency rate then leave this currency rate field to 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(189, '0ce61204d5e1d8f036836fd5f5984609', 'en', 'the_paypal_payments_only_supports_these_currencies', 'The PayPal Payments only supports these currencies:'),
(190, '5ebc51959c4ffc8f3dfe2ee58951cac3', 'en', 'currency_symbol', 'Currency Symbol'),
(191, 'f02205d0c581a683cabf32c03391b262', 'en', 'transaction_limits', 'Transaction Limits'),
(192, 'ccd522304f04c571209082c69558bac0', 'en', 'currency_decimal_places', 'Currency decimal places'),
(193, '1d24cbbce07562fc8d241975a2cf5d1f', 'en', 'minimum_amount', 'Minimum Amount'),
(194, 'db9cbe8fb5bf38ebede134b5c5a6b9e9', 'en', 'Environment', 'Environment'),
(195, '4c6dc2b3256a3e90c97b2c2640aaaa10', 'en', 'Live', 'Live'),
(196, '611b5b2194919c1922084e980a5c27c5', 'en', 'transaction_fee', 'Transaction fee'),
(197, 'd09dd1e4b81622ec6c08cd43f89e8769', 'en', 'sandbox_test', 'Sandbox (test)'),
(198, '25f02090c1575360337555f88d69c75b', 'en', 'paypal_client_id', 'Paypal Client ID'),
(199, '3c1a72030d3b5194993d486afb44505a', 'en', 'paypal_client_secret', 'Paypal Client Secret'),
(200, 'af9873a6cc51b5ed741cf662ae8f00a7', 'en', 'publishable_key', 'Publishable Key'),
(201, '9ff1c22605d03e8f450c8d76715e1ec5', 'en', 'secret_key', 'Secret Key'),
(202, 'ceb58a3113cddbb2e978704941907ce7', 'en', 'private_key', 'Private Key'),
(203, 'bf16cf03e6d74a56989343f279d6f00e', 'en', '2checkout_account_number_sellerid', '2Checkout account number (sellerId)'),
(204, 'cbe16abcb08fb552b649bc1e08f432b6', 'en', 'auto_clear_ticket_lists', 'Auto clear ticket lists'),
(205, 'f9953d83ce316facaef0f9a88a234d73', 'en', 'default_tickets_log', 'Default Tickets log'),
(206, '3d13d890b91c380af66f06f899bc2b46', 'en', 'clear_ticket_lists_after_x_days_without_any_response_from_user', 'Clear Ticket lists (after X days) without any response from user                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(207, 'e3494fc11bbfd675571cc4629e773b50', 'en', 'default_service', 'Default Service'),
(208, 'd511209e3447131561c821a8ef3f97b7', 'en', 'default_min_order', 'Default Min Order'),
(209, '79ac79f76e56ba04711c4c3c46810546', 'en', 'default_max_order', 'Default Max Order'),
(210, 'be80ecc31e1275f9d1613c20d9fa5ee3', 'en', 'default_price_per_1000', 'Default Price per 1000'),
(211, 'c1687773504a86f9d7fc8fdf5fbc7164', 'en', 'dripfeed_option', 'Drip-feed option'),
(212, '00194cafa32ddd87ae3b479b619a4fc4', 'en', 'note_please_make_sure_the_dripfeed_feature_has_the_active_status_in_api_provider_before_you_activate', 'Note: Please make sure the Drip-feed feature has the \'Active\' status in API provider before you activate.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(213, 'd826e719840cf07c586183dcbd181d7a', 'en', 'default_runs', 'Default Runs'),
(214, 'ad0ff4a87d3206aaee5483a813513067', 'en', 'default_interval_in_minutes', 'Default Interval (in minutes)'),
(215, '7465d0f20cfdfbcbe93273b5cb4b2614', 'en', 'explication_of_the_service_symbol', 'Explication of the service symbol'),
(216, 'a3188fbe5fc2177350f7bac082e27678', 'en', 'Pagination', 'Pagination'),
(217, '3d33f837a19036200a38e7ce69ac46a1', 'en', 'limit_the_maximum_number_of_rows_per_page', 'Limit the Maximum Number of Rows per Page'),
(218, '21d2c7254ad3ca4e18253a524889cb3b', 'en', 'price_percentage_increase', 'Price percentage increase'),
(219, '29f769b73aeb22aca3559ecc2e545bc5', 'en', 'use_for_sync_and_bulk_add_services', 'Use for sync and Bulk add services'),
(220, 'cf72beca8cbdab1398d1988b2619842c', 'en', 'displays_the_service_lists_without_login_or_register', 'Displays the service lists without login or register'),
(221, 'b8781e130865a370209c4520d5a28b0e', 'en', 'displays_api_tab_in_header', 'Displays API tab in header'),
(222, 'c5563e2a6f6ae7625bbb481b6aa8530a', 'en', 'displays_required_skypeid_field_in_signup_page', 'Displays required SkypeID field in signup page'),
(223, '696dc38e0316cc336057e6b4633bddbc', 'en', 'displays_google_recapcha', 'Displays Google reCAPTCHA'),
(224, 'dab0ef3a36377aba8f665ea240d09aa7', 'en', 'google_recaptcha_site_key', 'Google reCAPTCHA site key'),
(225, '4c66bc0309d91d96d249fd710911f903', 'en', 'google_recaptcha_serect_key', 'Google reCAPTCHA serect key'),
(226, '17285ab35ed9e4d80737678df0fd8a13', 'en', 'please_verify_recaptcha', 'Please verify reCAPTCHA'),
(227, 'b8204cd02110293f17a1e8b4412d9fe0', 'en', 'email_verification_for_new_customer_accounts', 'Email verification for new customer accounts'),
(228, '4c737583963af0fc8ffbdc41968d11c4', 'en', 'email_verification_for_new_customer_accounts_preventing_spam_account', 'Email verification for new customer accounts (Preventing Spam Account)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(229, 'bec831a3a760c7171c7731b4052ee466', 'en', 'default_timezone', 'Default Timezone'),
(230, 'adcecc38002e20105e8afa11363adbc9', 'en', 'set_the_default_timezone_at_register_page', 'Set the default timezone at Register page'),
(231, 'b62a776c287713e02f335e8ff3f328a6', 'en', 'notification_popup_at_home_page', 'Notification popup at home page'),
(232, 'e4cff3d040e3ccd9567b004ccddecff1', 'en', 'disable_home_page_langding_page', 'Disable Home page (Langding page)'),
(233, 'c3d399f5ffa57605ad5f735ef6118b58', 'en', 'Default_Homepage', 'Default Homepage'),
(234, 'fdbbeb825b09e11cd90e78708c69dad2', 'en', 'language_code', 'Language code'),
(235, '873abe0c28ee567e61b4dade2badd0cb', 'en', 'choose_a_language_code', 'Choose a language code'),
(236, '8b8fd617f55a47b6efb00829445fb00d', 'en', 'Default', 'Default'),
(237, '3f0b6a9b05ce0d790fdcee6965c2ad6f', 'en', 'Location', 'Location'),
(238, 'b4d0c1ac27d2999a2da466ba3b26f724', 'en', 'Key', 'Key'),
(239, '83c567c583227794acd91cc0ed57bb4f', 'en', 'Value', 'Value'),
(240, '953cb1d7e2c30f1a20d1ed7de6300f8c', 'en', 'Name', 'Name'),
(241, 'f4008eb34aad2edd8aa6e6e9608b2ca7', 'en', 'Code', 'Code'),
(242, '8e6340aebcc0ab6924ccda571689547a', 'en', 'Icon', 'Icon'),
(243, '2448888625e1061bebaba102b15407ad', 'en', 'choose_your_country', 'Choose your country'),
(244, '74282550ad86ba8ba9a83cc1f8f0a9f9', 'en', 'translation_editor', 'Translation editor'),
(245, 'd1087d43d74d18cc98b253a2976768cf', 'en', 'language_code_does_not_exists', 'Language Code does not exists'),
(246, '58833286d04405207456ae0eaedbc689', 'en', 'language_code_already_exists', 'Language code already exists'),
(247, '9e592fbe430d7b96339bd1fb303494b0', 'en', 'Transaction_logs', 'Transaction logs'),
(248, '69c60a2aebc85f3e6e6eb1de886e5d11', 'en', 'User', 'User'),
(249, '54403a22f7439a7d73a7ddbf01e03012', 'en', 'Transaction_ID', 'Transaction ID'),
(250, 'd7388e837e889cd154a4b3e622017362', 'en', 'Payment_method', 'Payment method'),
(251, 'b21b659d00e11ef3bf1b1e4d77a5faf8', 'en', 'Amount_includes_fee', 'Amount (includes fee)'),
(252, 'ea2d492507f8d4a0da1a83303f85ee55', 'en', 'Amount_paid_includes_fee', 'Amount Paid (includes fee)'),
(253, '6514ef4b182947273a9ea7553ff8d851', 'en', 'Paid', 'Paid'),
(254, '365fe2809fa47bac65991c3f0a61eed3', 'en', 'waiting_for_buyer_funds', 'Waiting for buyer funds...'),
(255, 'fe6ab14389df93c1a10b559fdb602d8e', 'en', 'cancelled_timed_out', 'Cancelled/Timed Out'),
(256, '70b10fb1d302196d92959e6c7261db8f', 'en', 'Tickets', 'Tickets'),
(257, '9e0ce3da8bad65615334ce2192a5b634', 'en', 'mark_as_new', 'Mark as New'),
(258, 'ac877f65b7581caf01fd0ce5c9f044ac', 'en', 'mark_as_pending', 'Mark as Pending'),
(259, 'f945f13bbfd75c33c3eeff8ae579d9a1', 'en', 'mark_as_closed', 'Mark as Closed'),
(260, '0dfbcfd875fea4ee1349bcd50ae780a6', 'en', 'add_new_ticket', 'Add New Ticket'),
(261, 'a8d7a6e692687439e96ae18fa0d89dff', 'en', 'Ticket_no', 'Ticket #'),
(262, '82abb152738b23940e9ae94b0bee8d7c', 'en', 'submit_as_closed', 'Submit as Closed'),
(263, '21db4dba4c83a2c4e00bce90087814a4', 'en', 'submit_as_pending', 'Submit as Pending'),
(264, '1bf1c20d964c2faf7578888e67713ae6', 'en', 'submit_as_new', 'Submit as New'),
(265, '95888815650679d314a0345a09eb0062', 'en', 'New', 'New'),
(266, '3230971e16aba66a7ef2495ff0a39920', 'en', 'Pending', 'Pending'),
(267, '591fdb98da11bb0fd0444312e0373c86', 'en', 'Closed', 'Closed'),
(268, '083fdfd6e87d63ee6cc1fcbbd3937e36', 'en', 'ticket_created_successfully', 'Ticket created successfully'),
(269, 'f90ac541c5f8c6ec7c8617ec11c8b6ab', 'en', 'Cancellation', 'Cancellation'),
(270, '0d3c6241d4c9f667b048d127e7b6ea1d', 'en', 'Speed_Up', 'Speed Up'),
(271, '57f6c0146fc2b3b20a1416ca36493b3a', 'en', 'Refill', 'Refill'),
(272, '1ee9bbb27ed1b9e224cde5943de9a591', 'en', 'Unread', 'Unread'),
(273, '55cfc81937f964884dcb7741fd27eb62', 'en', 'Request', 'Request'),
(274, '8dae2c4a84af26994e80f66406220478', 'en', 'enter_the_transaction_id', 'Enter the Transaction ID'),
(275, '3582766171abdb56c412f58a65fb9702', 'en', 'for_multiple_orders_please_separate_them_using_comma_example_123451234512345', 'For multiple orders, please separate them using comma. (example: 12345,12345,12345)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(276, 'b14c33896638f5bb119f3bfc8befc9ea', 'en', 'order_id_field_is_required', 'Order ID field is required'),
(277, '9ac3e713579b6cf2fda44f375945a2b1', 'en', 'please_choose_a_request', 'Please choose a request'),
(278, 'f43963449c314e76ff625cc12fbc920b', 'en', 'transaction_id_field_is_required', 'Transaction ID field is required'),
(279, 'b827a05def7db689744d244f071ad99f', 'en', 'please_choose_a_payment_type', 'Please choose a payment type'),
(280, '90864df2cfb04979c4f10a94f6ec5b89', 'en', 'FAQs', 'FAQs'),
(281, '6bbe513f32059353fa369e8b046fc8e9', 'en', 'Question', 'Question'),
(282, '11b3242a81d60100d253d3ff52770be9', 'en', 'Answer', 'Answer'),
(283, '54e246e5d2693c60d06ee53b5bbb650c', 'en', 'Default_sorting_number', 'Default Sorting number'),
(284, '21b22096c3daf27c5af81a15b3c6018f', 'en', 'Sorting', 'Sort'),
(285, '5123451b1a58ee66fdce336f5dd056b7', 'en', 'Edit_FAQ', 'Edit FAQ'),
(286, 'b8c6ed5245508282e208fe68c90f4529', 'en', 'question_is_required', 'Question is required'),
(287, '0b64af68795e238f77bc133afc2443af', 'en', 'answer_is_required', 'Answer is required'),
(288, '33b23752d4a0753390f3bc0e56a4c482', 'en', 'sort_number_must_to_be_greater_than_zero', 'Sort number must to be greater than zero'),
(289, '66c0dc7e1bea086fb6455ff2da9419c5', 'en', 'api_documentation', 'API Documentation'),
(290, '1f02bc40b6573529b5177eb94ddaffaf', 'en', 'note_please_read_the_api_intructions_carefully_its_your_solo_responsability_what_you_add_by_our_api', 'Note: Please read the API intructions carefully. Its your solo responsability what you add by our API.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(291, '0d1ab023fa75145d7c339a6ecf310ff5', 'en', 'response_format', 'Response format'),
(292, '33b066fd9ab464ad6284715bae72404a', 'en', 'http_method', 'HTTP Method'),
(293, '866b371698c2ad030739864475234bfd', 'en', 'api_key', 'API Key'),
(294, '4b24d1a204710012e02487455bf78063', 'en', 'download_php_code_examples', 'Download PHP Code Examples'),
(295, '0ee991a2f84955f865f611e2e54a5fda', 'en', 'place_new_order', 'Place new Order'),
(296, '3cc117f070ecd71ee8a62a13a7cf31e9', 'en', 'example_response', 'Example response:'),
(297, '333c1f4a17a50de5a8dfc4609c506fe7', 'en', 'status_order', 'Status Order'),
(298, '41d89288e4feadfd334496ca6c88ee59', 'en', 'parameter', 'Parameter'),
(299, '5d1b846745e45e81aac6096f38a540f8', 'en', 'multiple_orders_status', 'Multiple orders status'),
(300, 'eb4f59b2de4bd1c088c986bbd9bf76b7', 'en', 'services_lists', 'Services Lists'),
(301, '8d99026ebe0e9f1bd119c340b727227c', 'en', 'Balance', 'Balance'),
(302, '0f1695ca57b22867b3fb387c05f21683', 'en', 'your_api_key', 'Your API key'),
(303, 'e645f8a0a956ebb0d07443e0f6b7d7bc', 'en', 'service_id', 'Service ID'),
(304, 'a595f22d26f040eccff5cc952638cfc6', 'en', 'link_to_page', 'Link to page'),
(305, 'e7632b7a60ce4311ee2cd2335e0bb671', 'en', 'needed_quantity', 'Needed quantity'),
(306, 'a650c3c1b17185903246756401777826', 'en', 'order_id', 'Order ID'),
(307, 'cff188a6539df7eb489095bd9a7f5a65', 'en', 'order_ids_separated_by_comma_array_data', 'Order IDs separated by comma (array data)'),
(308, '536c103a24d904512c46e5ac433fe871', 'en', 'api_is_disable_for_this_user_or_user_not_found_contact_the_support', 'API is Disable for this user or User Not Found! Contact the Support                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(309, 'a71a4b2b1f9e36ea32ad8f351b02f424', 'en', 'this_action_is_invalid', 'This action is Invalid'),
(310, 'd419d359fdf07e099e432be3c203c661', 'en', 'there_are_missing_required_parameters_please_check_your_api_manual', 'There are missing required parameters. Please check your API Manual                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(311, '42c2bbe2a99c4cf98adfdcf5e0e25d92', 'en', 'invalid_link', 'Invalid Link'),
(312, 'a6164d26820f31e16681fdb962522fcb', 'en', 'service_id_does_not_exists', 'Service ID does not exists'),
(313, 'd2f5becff4db8ed2f07762f310e09c6e', 'en', 'quantity_must_to_be_greater_than_or_equal_to_minimum_amount', 'Quantity must to be greater than or equal to minimum amount'),
(314, '60fc060849c00b8271171d34b341e8c3', 'en', 'quantity_must_to_be_less_than_or_equal_to_maximum_amount', 'Quantity must to be less than or equal to maximum amount'),
(315, '40201873806a70c0abe8ce5e8d64f234', 'en', 'not_enough_funds_on_balance', 'Not enough funds on balance'),
(316, '0b1e18ff3f36bf5a2d6bf14f96d76584', 'en', 'order_id_is_required_parameter_please_check_your_api_manual', 'Order ID is required parameter. Please check your API Manual'),
(317, '6c17a34d3bb101fe2027c602dbf39b4d', 'en', 'incorrect_order_id', 'Incorrect order ID'),
(318, '00c8e4902e0a209d402a79d8b21b2340', 'en', 'edit_service', 'Edit Service'),
(319, 'a199d4137a8e0bff78f1e6e1522616ef', 'en', 'package_name', 'Package Name'),
(320, '6fd3e7dbf7e68ce7b50e824764c7d56a', 'en', 'choose_a_category', 'Choose a category'),
(321, '4dd9e6e5fdde188ab3c32678648c340a', 'en', 'maximum_amount', 'Maximum Amount'),
(322, '1a147aafcd7199e1d09ff84116456834', 'en', 'Price', 'Price'),
(323, 'e891559cfaa717d1eca9c6669ef9d71b', 'en', 'rate_per_1000', 'Rate per 1000'),
(324, 'e423ea6ba618cb45e512d2325d461bc9', 'en', 'min__max_order', 'Min / Max order'),
(325, 'dc96110cc65ca2fb9127cf939ba52d4f', 'en', 'name_is_required', 'Name is required'),
(326, '72aca5f993d7c3a515247199aec8acf0', 'en', 'category_is_required', 'Category is required'),
(327, '2d8d82c53ca69128adfebf8f712c2eea', 'en', 'min_order_is_required', 'Min order is required'),
(328, 'a4748d39c94210b5838bd852c8a7e54e', 'en', 'max_order_is_required', 'Max order is required'),
(329, '0307f9dade83e7b1af0bec05df599646', 'en', 'max_order_must_to_be_greater_than_min_order', 'Max order must to be greater than Min order'),
(330, '732bddf882cdbee52eb47f8bb6965ea1', 'en', 'price_invalid', 'Price invalid'),
(331, 'fd5802376b118f0eb19eff1a19b67132', 'en', 'currency_decimal_places_must_to_be_equal_than_2', 'Currency decimal places must to be equal than 2'),
(332, '1a1a4f5d7a875190c8c400938bf00f68', 'en', 'Details', 'Details'),
(333, '4711733c608cd33ec0c998616f3beef7', 'en', '__good_seller', 'Good Seller'),
(334, '37f6026c8c238b18797b887dc29edf07', 'en', '__speed_level', 'Speed Level'),
(335, 'f961bab0b2bef3fa24a939550252aa43', 'en', '__hot_service', 'Hot service'),
(336, 'dbb36d103327626cde636f3e44eb4afe', 'en', '__best_service', 'Best Service'),
(337, '031e28a96a7cb797a33734883fb59426', 'en', '__drip_feed', 'Drip Feed'),
(338, '53f29be58c958876e78df79da3c41c8a', 'en', '__cancel_button', 'Cancel Button'),
(339, 'e39223d944c4aebef0d46abe08f9842a', 'en', 'custom_comments', 'Custom comments'),
(340, 'a0d0abc9b71cd5125ad374b3a3e13295', 'en', 'custom_comments_package', 'Custom comments package'),
(341, '9886854b18169847a84d82f11542c554', 'en', 'mentions_with_hashtags', 'Mentions with hashtags'),
(342, 'f5131e9b280fd22d9b0f56f85e4b56ab', 'en', 'mentions_custom_list', 'Mentions custom list'),
(343, '526473be922049c91dd4f4e3d41e55eb', 'en', 'mentions_hashtag', 'Mentions hashtag'),
(344, 'e9c16b4b0ecece8cf098f94f02c9089a', 'en', 'mentions_user_followers', 'Mentions user_followers'),
(345, '342a2f180a04f62c12606eb13422f724', 'en', 'mentions_media_likers', 'Mentions_media_likers'),
(346, '9ce2671b78aefbae59c5e1d0522ccbf5', 'en', 'package', 'Package'),
(347, '43fb683af19adb531488bc6fe77562eb', 'en', 'comment_likes', 'Comment likes'),
(348, '2961d4d9ec076b4fdf5dcbc58e127ca2', 'en', 'all_deactivated_services', 'All deactivated Services'),
(349, '0af0aa4bae7d8477cc43dccd2a7eb5be', 'en', 'failed_to_delete_there_are_no_deactivate_service_now', 'Failed to delete. There are no deactivate service now!'),
(350, '32f0915ad7443679782968f8b34487d5', 'en', 'Category', 'Category'),
(351, '8b3d7c307257fff49af932c5a2f8f01e', 'en', 'edit_category', 'Edit Category'),
(352, '62568c65ddbdaea879b758aa3a79b256', 'en', 'all_deactivated_categories', 'All deactivated Categories'),
(353, 'd9b8cc86077ee2ca44c3e3d68b4e59e1', 'en', 'failed_to_delete_there_are_no_deactivate_category_now', 'Failed to delete. There are no deactivate Category now!'),
(354, '82fd48af224f0598fcbd0a3bd9518b91', 'en', 'single_order', 'Single Order'),
(355, '7bcd1d9a32febb3309c5c0e60318b1cf', 'en', 'mass_order', 'Mass Order'),
(356, 'edf78f6b1eae85eafe0a2122c8a808b7', 'en', 'order_service', 'Order Service'),
(357, '46fcf55f0e314c0d09177cad29dc2b16', 'en', 'choose_a_service', 'Choose a service'),
(358, 'baa05be8a30cf987d3e41df354d3fa83', 'en', 'Link', 'Link'),
(359, 'fc73f8e1c49fdeb5fb58b6716f6819d2', 'en', 'Quantity', 'Quantity'),
(360, '882f541405de4015bd7e7a961fa7b96e', 'en', 'yes_i_have_confirmed_the_order', 'Yes, i have confirmed the order!'),
(361, 'f66b2e8b60c2aef2ad63298eb4adede8', 'en', 'total_charge', 'Total Charge:'),
(362, '38fb4cf84d449e0416ebe1b27bdf9c3b', 'en', 'order_resume', 'Order Resume'),
(363, 'e83791f18e461ba8efe467df585d4886', 'en', 'service_name', 'Service name'),
(364, 'e9780436659228269ac8d1f1506ee8ce', 'en', 'price_per_1000', 'Price per 1000'),
(365, 'f098c787c25e7ac0a02313809cf5a422', 'en', 'place_order', 'Place order'),
(366, 'e9705dada214ffa43e6c12fae6a342e2', 'en', 'one_order_per_line_in_format', 'One order per line in format'),
(367, '5f6e54eb3330814098645a9f465997a3', 'en', 'here_you_can_place_your_orders_easy_please_make_sure_you_check_all_the_prices_and_delivery_times_before_you_place_a_order_after_a_order_submited_it_cannot_be_canceled', 'Here you can place your orders easy! Please make sure you check all the prices and delivery times before you place a order! After a order submited it cannot be canceled.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(368, '29abc4a59360dbe716932ccc26a07e4f', 'en', 'failed', 'Failed!'),
(369, 'ddf49e327998e6ad751f0b9bc6e1cac7', 'en', 'there_was_some_issues_with_your_mass_order', 'There was some issues with your mass order:'),
(370, '7700e6fa1938c392199e89173a4effc2', 'en', 'order_content', 'Order content'),
(371, 'b4adfb2cf8531f1782039ed7d0ddcb41', 'en', 'error_message', 'Error Message'),
(372, '24ffb7510e840cbc67a46555ce6182f7', 'en', 'order_basic_details', 'Order Basic Details'),
(373, '15e908848f05f4e3000acfd2356aeef9', 'en', 'sort_by', 'Sort by'),
(374, '7d384ebcd128ce9519f47f82b1a4dac3', 'en', 'All', 'All'),
(375, '5b64b4dec85e924802784b4ef0ec9f2a', 'en', 'Completed', 'Completed'),
(376, '11336bfb8417d4482a54ff6fb5db1cec', 'en', 'Processing', 'Processing'),
(377, '065e5e08db1de72eb26cd33b59bf4739', 'en', 'In_progress', 'In progress'),
(378, '72232a8262e412693d0571b5f5e58c9e', 'en', 'Partial', 'Partial'),
(379, '0ccb7d7bb57639a86ae4575a87f40cd7', 'en', 'Canceled', 'Canceled'),
(380, '5a0f66068ae7d5b39cae9e8faceb61ca', 'en', 'Refunded', 'Refunded');
INSERT INTO `general_lang` (`id`, `ids`, `lang_code`, `slug`, `value`) VALUES
(381, '3397df1f925108d3052e8c57b804353f', 'en', 'Edit_Order', 'Edit Order'),
(382, 'ff856f69f502c17ca1c2e71242128b67', 'en', 'Start_counter', 'Start counter'),
(383, '0f3911e0e6aed1036471b193da68722c', 'en', 'Remains', 'Remains'),
(384, 'bff5d52e764f39915633112df324c782', 'en', 'Amount', 'Amount'),
(385, '2d71baedb66295696ac727a30dd0d55f', 'en', 'Service', 'Service'),
(386, '7e718aacb79cb621b473b75d28831251', 'en', 'service_does_not_exists', 'Service does not exists'),
(387, 'f35c0546d998e313cd7efabf189ec532', 'en', 'order_amount_exceeds_available_funds', 'Order amount exceeds available funds!'),
(388, 'f0881c2018861a982f89d9cd32ffb0ac', 'en', 'order_amount_exceeds_available_the_min_max', 'Order amount exceeds available minimum or maximum!'),
(389, '4c8e864993f7667a9092d71226974e93', 'en', 'please_choose_a_category', 'Please choose a category'),
(390, 'e36876e52f52c8012f4244ac94cfd2cf', 'en', 'please_choose_a_service', 'Please choose a service'),
(391, '6fa327b925017a745404978f0528de53', 'en', 'category_does_not_exists', 'Category does not exists'),
(392, '19be89af11cd6e6830ba615fdf7f9559', 'en', 'quantity_is_required', 'Quantity is required'),
(393, '919844c645723c519a344c271d7e2de9', 'en', 'you_must_confirm_to_the_conditions_before_place_order', 'You must confirm to the conditions before place order'),
(394, '525472f1ed9359a919086e10cdd7eb33', 'en', 'place_order_successfully', 'Place Order successfully'),
(395, 'f1f130b0009c792cffadf3e73dfc39f0', 'en', 'field_cannot_be_blank', 'Field cannot be blank'),
(396, 'f0027d1b9ca6ddaf1fbece3387a47864', 'en', 'you_do_not_have_enough_funds_to_place_order', 'You do not have enough funds to Place order'),
(397, '6c4a6669473c901da0137734dae67cdf', 'en', 'invalid_format_place_order', 'Invalid format place order'),
(398, '67d2f84e1e1ed90679172c499eed562c', 'en', 'link_is_required', 'Link is required'),
(399, '90cf251b686f03bc892c8599beb2e2d7', 'en', 'start_counter_is_a_number_format', 'Start counter is a number format'),
(400, '79261f9e0d5dc9ea16b9555fb3fbd192', 'en', 'remains_is_a_number_format', 'Remains is a number format'),
(401, 'df74a7d30d48354f80e515e683fff63e', 'en', 'dripfeed', 'Drip-feed '),
(402, 'e0002b5a27c74cfbab9db04da91041a0', 'en', 'what_is_dripfeed', 'What is Drip-feed?'),
(403, '282e766a58696fb09a52232d1932b027', 'en', 'Runs', 'Runs'),
(404, 'fa9b195f2d83fefdcbb2e89a76c897da', 'en', 'interval_in_minutes', 'Interval (in minutes)'),
(405, '48e1f9e03690195ec15f59248e7d974b', 'en', 'interval', 'Interval'),
(406, '4067f4f95da67be029ece17aad653827', 'en', 'total_quantity', 'Total Quantity'),
(407, 'b969c6a205a85046f4d876ec5dd3de63', 'en', 'runs_is_required', 'Runs is required'),
(408, '8d1b1330ff5e47af0450683071769b3e', 'en', 'interval_time_is_required', 'Interval time is required'),
(409, 'e0164ebf2f9b753417594ec4b90aed27', 'en', 'interval_time_must_to_be_less_than_or_equal_to_60_minutes', 'Interval time must to be less than or equal to 60 minutes'),
(410, 'e171bf17d12fa682e6caa11e83c4e9fc', 'en', 'drip_feed_desc', '<p><strong>Drip-Feed</strong> is a service that we are offering so you would be able to put the same order multiple times automatically.</p>\r\n                        <p>Example: let\'s say you want to get 1000 likes on your Instagram Post but you want to get 100 likes each 30 minutes, you will put:</p>\r\n                        <ul>\r\n                          <li>Link: Your Post Link</li>\r\n                          <li>Quantity: 100 </li>\r\n                          <li>Runs: 10</li>\r\n                          <li>Interval: 30</li>\r\n                        </ul>\r\n                        <p>\r\n                          <strong>Note:</strong> Never order more quantity than the maximum which is written on the service name (Quantity x Runs), Example if the service\'s max is 4000, you don’t put Quantity: 500 and Run: 10, because total quantity will be 500x10 = 5000 which is bigger than the service max (4000). Also never put the Interval below the actual start time (some services need 60 minutes to start, don’t put Interval less than the service start time or it will cause a fail in your order).\r\n                        </p>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(411, '360a5dd6612e72dc8694b4af9d3dc6d6', 'en', 'Comments', 'Comments'),
(412, 'b8163c4d3fa592b43882a0b7c7e50300', 'en', 'Usernames', 'Usernames'),
(413, 'c57b416d959573a4ef9b3b61c6881525', 'en', 'Hashtag', 'Hashtag'),
(414, '82a3a0b3c257850ed794f4f6bf4fa7a1', 'en', 'Media_Url', 'Media Url'),
(415, '84012358291e0ae46c18a7b6e0389ccc', 'en', 'hashtags_format_hashtag', 'Hashtags (Format: #hashtag)'),
(416, '683348d3685faa6d6d3a5e07694d0d25', 'en', 'hashtag_field_is_required', 'Hashtag field is required'),
(417, 'a3b226bd9cd65049d9b2cd78f2d5354b', 'en', 'username_field_is_required', 'Username field is required'),
(418, '5762770501aaaeaf608c43d20dc0e12d', 'en', 'comments_field_is_required', 'Comments field is required'),
(419, '107d741157401b68121d11c111d97cd6', 'en', 'min_cannot_be_higher_than_max', 'Min cannot be higher than Max'),
(420, 'c4346c8b349283d60f12ebc6596d7b52', 'en', 'incorrect_delay', 'Incorrect delay'),
(421, 'c917e7308f1bc335f0637f724324d754', 'en', 'min', 'min'),
(422, 'c8e38719afb9dc7d1da1d7e1835dc7e5', 'en', 'max', 'max'),
(423, 'e5d0f8dafe131b0559857a10efdd0235', 'en', 'minimum_1_post', 'minimum 1 post'),
(424, '334ce2918adb78793e6ee04ce02c75ff', 'en', 'new_posts_future_posts_must_to_be_greater_than_or__equal_to_1', 'New Posts (Future posts) must to be greater than or  equal to 1'),
(425, 'b90ecebd4de5ef308e329da3af189535', 'en', '1_per_line', '(1 per line)'),
(426, 'f10935b39b1f909ab4621f82c6843714', 'en', 'Subscriptions', 'Subscriptions'),
(427, '3dc3768e8ac8093a27a90fc405a45b77', 'en', 'No_delay', 'No delay'),
(428, 'b5c034400093f3ba9ea0d0b5df5980f6', 'en', 'minutes', 'minutes'),
(429, '6a3695ff3c91ba6ae50cf276c4c3038a', 'en', 'Posts', 'Posts'),
(430, '0d54c4a9ac5521ffbbcbc165aa51b43c', 'en', 'New_posts', 'New posts'),
(431, '6d4dae5c97fd710b439ce12ca2705b8f', 'en', 'Actived_Posts', 'Actived Posts'),
(432, '8e094bf1325aa7cb90614b0967b4a738', 'en', 'Username', 'Username'),
(433, '950c6a1035ce509727905c872edb1e7b', 'en', 'Expiry', 'Expiry'),
(434, '9c5c12d6ee1018067ea9a15b5b6c8466', 'en', 'Delay', 'Delay'),
(435, 'da3be74298721dab7220f8d27722918f', 'en', 'Paused', 'Paused'),
(436, '62e11fefcc5ffe988fc167ee2d40f88e', 'en', 'Expired', 'Expiry field is required'),
(437, 'd8e98d925b84bd8151439ab97b08fe8e', 'en', 'total_users', 'Total Users'),
(438, '38d65bc2c7598b5cfc1e623b2b7a424c', 'en', 'your_balance', 'Your Balance'),
(439, 'f26ec3b7ef027f04181a6b9e76fc033a', 'en', 'total_orders', 'Total Orders'),
(440, 'da402174dc8b9198fc287a0af1837f29', 'en', 'total_tickets', 'Total Tickets'),
(441, '46ee34e7dde64be9432cdf275c54f65e', 'en', 'total_transactions', 'Total Transactions'),
(442, '8e435db409c82455411a9290d3db21c8', 'en', 'recent_orders', 'Recent Orders'),
(443, '00f12c5ea34c5d7c67dadeae237ac229', 'en', 'recent_tickets', 'Recent Tickets'),
(444, 'c413d2f8a8ff1a113f1e3fd0449bff7e', 'en', 'total_amount_recieved', 'Total Amount Recieved'),
(445, 'cd14bef885ff374f76ce4adb122b8dbf', 'en', 'total_amount_spent', 'Total Amount Spent'),
(446, 'ba9283bb81bce7d9e77584ce9fbb8c06', 'en', 'Your_account', 'Your account'),
(447, 'a1d82db7422301dcb4d3233cd64694ff', 'en', 'Generate_new', 'Generate new'),
(448, 'f99c7c591288d6e5411c9028cd84ace8', 'en', 'manual_payment', 'Manual Payment'),
(449, 'e32b748ac52ea47527be3a6b29bddae3', 'en', 'you_can_deposit_funds_with_paypal_they_will_be_automaticly_added_into_your_account', 'You can deposit funds with %s® they will be automaticaly added into your account!   Remember You can use Funds Within a Month only!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             '),
(450, '897c5c7c7f0c47838224afdf93f048ba', 'en', 'amount_usd', 'Amount (%s)'),
(451, 'a382959d01498b454727317f9baa1364', 'en', 'yes_i_understand_after_the_funds_added_i_will_not_ask_fraudulent_dispute_or_chargeback', 'Yes, I understand after the funds added i will not ask fraudulent dispute or charge-back!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(452, 'c21ee6448f03c37b7889cc4097bd5d0e', 'en', 'this_payment_gateway_is_not_already_active_at_the_present', 'This Payment Gateway is not already active at the present!'),
(453, '358ea0f14fcd39bce702b9cf49d5774a', 'en', 'Pay', 'Pay'),
(454, '5389a6d0519ecf8a9958519223978cda', 'en', 'you_can_make_a_manual_payment_to_cover_an_outstanding_balance_you_can_use_any_payment_method_in_your_billing_account_for_manual_once_done_open_a_ticket_and_contact_with_administrator', 'You can make a manual payment to cover an outstanding balance. Once time, open a ticket and contact with Administrator.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(455, 'cd9a0e9254c71ec3aca16c142ccb48ab', 'en', 'amount_is_required', 'Amount is required'),
(456, '1f7d4248977bdd9aa1db88b34762ca01', 'en', 'amount_must_be_greater_than_zero', 'Amount must be greater than zero'),
(457, 'bd0b69d010c831ddc431a708b3b7c716', 'en', 'minimum_amount_is', 'Minimum Amount is'),
(458, 'bd9406007463ae0dfaa7e92e040aef29', 'en', 'you_must_confirm_to_the_conditions_before_paying', 'You must confirm to the conditions before paying'),
(459, '5d7382bae39c6998d2f5641d9560aefe', 'en', 'processing_', 'Processing ....!'),
(460, 'a889a05ed739c46ec3c2d87c905d9a00', 'en', 'payment_sucessfully', 'Payment sucessfully!'),
(461, 'b34957766ad92836a82a35fd06973de7', 'en', 'your_payment_has_been_processed_here_are_the_details_of_this_transaction_for_your_reference', 'Your payment has been processed. Here are the details of this transaction for your reference:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(462, 'd0b7970767b60d7949c44cf7a87f17fa', 'en', 'payment_unsucessfully', 'Payment unsucessfully!'),
(463, '3f7d5e8c1253b7f077dc49fd16a5fa58', 'en', 'sorry_your_payment_failed_no_charges_were_made', 'Sorry, your payment failed. No charges were made'),
(464, '99009f6b5ab1d4b4be77db238e9bad9b', 'en', '2checkout_creditdebit_card_payment', '2Checkout Credit/Debit card Payment'),
(465, '3b3f3fb4e64e69773d2060ed1b1e4b71', 'en', 'stripe_creditdebit_card_payment', 'Stripe Credit/Debit card Payment'),
(466, '32372a8ba6fb85f29a8e8b171cd1405c', 'en', 'user_information', 'User information'),
(467, 'd0975d7a0e3ffb418490c0eed3925c47', 'en', 'card_number', 'CARD NUMBER'),
(468, '9b7e7bf5eb14a5aac74f27c1887f2e94', 'en', 'expiry_date', 'EXPIRY DATE'),
(469, 'c7862d78be7b94e32f5b6f775a679ead', 'en', 'there_is_no_any_payment_gateway_at_the_present', 'There is no any payment gateway at the present!'),
(470, '15188e48b1ee6aad90220fb42b93a65f', 'en', 'payment_gateway', 'Payment Gateway'),
(471, '288ec7942a1059f05a364e0263b088ce', 'en', 'empty', 'Empty'),
(472, 'dfbbb2f711cfbadef21276525d0ae35a', 'en', 'transaction_id_was_sent_to_your_email', '(Transaction ID was sent to your email)'),
(473, '8be056d961e769cf1313a25e32566544', 'en', 'total_amount_XX_includes_fee', 'Total Amount (%s) (Includes fee):'),
(474, 'a2526a14908bb68e0e339b2069deb53c', 'en', 'currency_rate', 'Currency Rate'),
(475, '50c076a6f2535e84a34e411f07cfd520', 'en', 'please_do_not_refresh_this_page', 'Please do not refresh this page...'),
(476, 'bedb166827f4fb90a9b6ed9e95460d6e', 'en', 'Deposit_to_', 'Deposit_to_'),
(477, '3825d6a0f66e37f84ae545f4e543429e', 'en', 'clicking_return_to_shop_merchant_after_payment_successfully_completed', 'Clicking <strong class=\'text-danger\'>Return to Shop (Merchant)</strong> after payment successfully completed                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(478, 'faee242cc69341cf56a4cff821c4cbdb', 'en', 'resellers_1_destination_for_smm_services', 'Resellers\' #1 Destination for SMM Services'),
(479, '5844672fef686887efe0f3c4021d7374', 'en', 'save_time_managing_your_social_account_in_one_panel_where_people_buy_smm_services_such_as_facebook_ads_management_instagram_youtube_twitter_soundcloud_website_ads_and_many_more', 'Save time managing your social account in one panel. Where people buy SMM services such as Facebook ads management, Instagram, Twitter, Soundcloud, Website ads and many more! CheapestPanel is all in one social media marketing panel and we also provide pubg uc, pubg popularity, Netflix, Prime, Hotstar at very cheap price. Try us once and you\'ll be a daily user of our service.                                        '),
(480, 'b7c120a09632e9b510af10850d38f19a', 'en', 'get_start_now', 'Get start now!'),
(481, '29a378e89006566b56987e4787883c94', 'en', 'best_smm_marketing_services', 'Best SMM Marketing Services!'),
(482, 'd58cb47ffcbbb170474a173c0e794522', 'en', 'best_smm_marketing_services_desc', 'We provide the cheapest SMM Reseller Panel services amongst our competitors. If you’re looking for a super-easy way to offer additional marketing services to your existing and new clients, look no further! our site offers that and more ! <br><br>You can resell our services in any site or Link your site through API and start resell our services directly start building stronger relationships, and helping you make a great profit at the same time. We do the work so you can focus on what you do best! As you grow, your profit grows without having to hire more people. This allows you to expand your business without all the expense and headaches usually associated with growing bigger!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(483, '78664af6c3537b539dc15658d9b3e5e5', 'en', 'What_we_offer', 'What we offer!'),
(484, '8493e1d9609a0e90dfd9da37fdff16b7', 'en', 'you_can_resell_our_services_and_grow_your_profit_easily_resellers_are_important_part_of_smm_panel', 'You can resell our services and grow your profit easily, Resellers are important part of SMM PANEL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(485, '7cd885b99228e40c5f18b4f794370530', 'en', 'technical_support_for_all_our_services_247_to_help_you', 'CheapestPanel for all our services 24/7 to help you'),
(486, 'd33425924f377a8b5889d9a2cb838211', 'en', 'get_the_best_high_quality_services_and_in_less_time_here', 'Get the best high quality services and in less time here'),
(487, '2f30b2408eada03c0a31532d5b9f79c0', 'en', 'services_are_updated_daily_in_order_to_be_further_improved_and_to_provide_you_with_best_experience', 'Services are updated daily In order to be further improved and to provide you with best experience                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(488, '7b62c541c60032211b23577c86287f2a', 'en', 'we_have_api_support_for_panel_owners_so_you_can_resell_our_services_easily', 'We have API Support For panel owners so you can resell our services easily                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(489, '16f5a3187da04b6d96227b9581368707', 'en', 'we_have_a_popular_methods_as_paypal_and_many_more_can_be_enabled_upon_request', 'We have a Popular methods as PayPal and many more can be enabled upon request                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(490, 'df8b3c767173290a6e8b6f14dec05741', 'en', 'Resellers', 'Resellers'),
(491, '40f45f39f95b4d80860d955098a3150f', 'en', 'secure_payments', 'Secure Payments'),
(492, 'b8cb0d97a3bbd01aeab4eb2d10fb9d4b', 'en', 'Supports', 'Supports'),
(493, 'b57de0d6d933ca2b7328d950031b8afb', 'en', 'Updates', 'Updates'),
(494, '47f818f525a4b5b23b1d2754a8bea210', 'en', 'api_support', 'Api support'),
(495, '0bb3f62a31505294accf547aa8731a96', 'en', 'high_quality_services', 'High quality services'),
(496, 'bd9f0d030b75f525ea936801928609ec', 'en', 'ready_to_start_with_us', 'READY TO START WITH US?'),
(497, 'e6418b70a03b01e4474e03cfb282e010', 'en', 'Terms__Privacy_Policy', 'Terms & Privacy Policy'),
(498, '473358e10659574749b6636b0f2f925f', 'en', 'Terms', 'Terms'),
(499, '872d6226ae6952d92afa4ef02d7ad456', 'en', 'Privacy_Policy', 'Privacy Policy'),
(500, '6d58e8116d8754d195baffdc96c45d69', 'en', 'Notification', 'Notification!'),
(501, '75348ffc7d34eca675289ee93537d934', 'en', 'Close', 'Close'),
(502, '8e4e4d63aa5447bca59ccf66613d1d37', 'en', 'register_and_try_for_free_we_give_you_1_to_get_started', 'Register and try for FREE. We give you € 1 to get started!'),
(503, '84485ac2af5551729b927a929aa99931', 'en', 'login_to_your_account', 'Login to your account'),
(504, '6ed56d2069f546bafea8a739f5ed315c', 'en', 'only_letters_and_white_space_allowed', 'Only letters and white space allowed'),
(505, 'c238568b5dd0b6d5ca9fa4a8aef7f755', 'en', 'remember_me', 'Remember me'),
(506, '20b1b53ee5903e814305783dfa2e5209', 'en', 'forgot_password', 'Forgot password'),
(507, '6bf3d1766611a3c9bfef327ccdd35923', 'en', 'dont_have_account_yet', 'Don\'t have account yet?'),
(508, '4257f9e172e85c395c152c02e9798562', 'en', 'enter_your_registration_email_address_to_receive_password_reset_instructions', 'Enter your registration email address to receive password reset instructions.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(509, '72e143dafb3da288420fcbf84acae147', 'en', 'new_password', 'New Password'),
(510, '22004c33487191cfd18d7dc2feb82405', 'en', 'register_now', 'Register Now'),
(511, 'e8b66b7a3d22c80d704d294566099698', 'en', 'create_new_account', 'Create new account'),
(512, '5f2b673a1239de07fefb39fd81189d8b', 'en', 'i_agree_the', 'I agree the'),
(513, '5d58d2017f36fec00eb67c259a3e5cdc', 'en', 'already_have_account', 'Already have account?'),
(514, 'a61858c509ec7a0c41061c5807f7e31c', 'en', 'oops_you_must_agree_with_the_terms_of_services_or_privacy_policy', 'Oops! You must agree with the Terms of Services or Privacy Policy                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(515, 'd53a563757da6ff2ad7f5c1c4c980a20', 'en', 'welcome_you_have_signed_up_successfully', 'Welcome! you have signed up successfully.'),
(516, 'ac210155bacec209ca1dfa6182d3ef8d', 'en', 'your_account_has_not_been_activated', 'Your account has not been activated Please Check Mail (Spam/JunK)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(517, 'cee2c2e7bf747abbe82efd794188f7eb', 'en', 'Login_successfully', 'Login successfully'),
(518, '5726c2acef200639cb609b04ed8de61a', 'en', 'email_address_and_password_that_you_entered_doesnt_match_any_account_please_check_your_account_again', 'Email address and password that You entered doesn\'t match any account. Please check your account again                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(519, 'c0c44e8add81026134ca230dafe92366', 'en', 'we_have_send_you_a_link_to_reset_password_and_get_back_into_your_account_please_check_your_email', 'We have send you a link to reset password and get back into your account. Please check your email                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(520, 'db5a1ca995bc4892d02c82d3fd81db69', 'en', 'your_password_has_been_successfully_changed', 'Your password has been successfully changed'),
(521, '3497d554ed24b9f4a2d79dd67227cc3d', 'en', 'thank_you_for_signing_up_please_check_your_email_to_complete_the_account_verification_process', 'Thank you for signing up! Please check your email to complete the Account Verification Process                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(522, 'f347b9b963de31305287895e53b43a29', 'en', 'congratulations_your_registration_is_now_complete', 'Congratulations! Your Registration is Now Complete'),
(523, 'db01c5672e578046c3355196132ee64b', 'en', 'congratulations_desc', 'Welcome to our service! We\'re happy to have you as a part of our community. Your account has been successfully created. You can access your account by clicking on the button below.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(524, '53ef7a984ffce65fb352957e0c704686', 'en', 'api_providers_list', 'API Providers List'),
(525, '70ebd5f67f1338a24cc23e0658b1e88e', 'en', 'update_api', 'Update API'),
(526, '09488b224dc6ca5cd1d8808a5bbd9c69', 'en', 'update_balance', 'Update Balance'),
(527, '9c4838f6c0bd8a959d8e062ea1f6737a', 'en', 'Type', 'Type'),
(528, 'abc648c2196d2c14c315c2026e9d3be3', 'en', 'Manual', 'Manual'),
(529, '2c0957875b55d0a9baf46f093907f4ec', 'en', 'edit_api', 'Edit API'),
(530, 'dfe3874ec999b4ded32370a9632f3862', 'en', 'api_url', 'API Url'),
(531, 'cd171447a719c512b271e1a0b55d4854', 'en', 'list_of_api_services', 'List of API Services'),
(532, 'c16de947459264551824c6c98747751d', 'en', 'choose_a_api_provider', 'Choose a API Provider'),
(533, '82c91e82a073daad9a7648899e76474e', 'en', 'add_service', 'Add service'),
(534, '2e94869bad09148c6ed04a1bf87c5123', 'en', 'services_list_via_api', 'Services list via API'),
(535, '0bbda230c7830bea5393341cd81a0236', 'en', 'api_provider_does_not_exists', 'API Provider does not exists.'),
(536, '87bec5493b77c1d8b183de7c53a77b91', 'en', 'api_url_is_required', 'API URL is required'),
(537, '9e856c3b56615c6bf84d04c2fac90dae', 'en', 'api_key_is_required', 'API KEY is required'),
(538, 'fcc2610f955eb25b00bd601260c89896', 'en', 'sorry_the_service_id_already_exists', 'Sorry! The Service ID already exists'),
(539, '47a7b4193ebce54faeeb1ddc751d6af4', 'en', 'add_new_service_via_api', 'Add New Service via API'),
(540, '74adcee264cc3a8f90d0b1f0f80ef185', 'en', 'api_orderid', 'API OrderID'),
(541, '90115b981882db895421e44072b6f585', 'en', 'API_Response', 'API Response'),
(542, '4d076e5b086814c2915128d52edd709a', 'en', 'bulk_add_all_services', 'Bulk Add All Services'),
(543, '19c9bbda26870da64e01e7ef437b1b11', 'en', 'api_provider_name', 'API Provider Name'),
(544, '08775f8f5ff3805d8aab2d70cafb7d8f', 'en', 'api_provider', 'API Provider'),
(545, '0b8071f577339afb7356457ee357d8bc', 'en', 'api_service_id', 'API ServiceID'),
(546, 'c25fbcd9d8d80c4b06f1cecb68c6fd7f', 'en', 'price_percentage_increase_auto_rounding_to_2_decimal_places', 'Price percentage increase (Auto rounding to 2 decimal places)'),
(547, '7c29272a0121a45c73b672d6501d41aa', 'en', 'bulk_add_limit', 'Bulk add limit'),
(548, '0e4ee1767ceca8e64876d5274c290a92', 'en', 'note_when_you_use_this_feature_the_system_will_bulk_add_services_categories_from_api_provider_and_set_price_percentage_increase', 'Note: When you use this feature, the system will bulk add services, categories from API provider and set price percentage increase                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(549, '5a8aa06aa2e25f785ac88c047c140200', 'en', 'price_percentage_increase_in_invalid_format', 'Price Percentage increase in invalid format'),
(550, '2c3ac932168d8cdb5926749d4cc1cb93', 'en', 'bulk_add_limit_in_invalid_format', 'Bulk add limit in invalid format'),
(551, '8ad4659945091e3b37c15ca94b5e0e28', 'en', 'add_edit_provider_note', 'Note: This script supports most of all API Providers like: JAP, hqsmartpanel.com etc. So it doesn\'t support another API provider which have different API Parameters                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(552, '777aee38b14e35057cc401d10d80e8b1', 'en', 'sync_services', 'Sync Services'),
(553, '9128112a98be7ad6c7a7f6fd4234c074', 'en', 'Disabled', 'Disabled'),
(554, '6c2dacb5ba1be9a1108893533230ea43', 'en', 'synchronization_results', 'Synchronization results'),
(555, 'b940a00a27b5eec874e6c57046008ed9', 'en', 'synchronous_request', 'Synchronous request'),
(556, 'c18907502cbbab9dab4e572d274848b8', 'en', 'current_service', 'Current Services'),
(557, '5dc74c3ffe913e2f50fadbb05a1876cc', 'en', 'current_service_sync_all_the_current_services', 'Current Service: Sync all the current services'),
(558, 'c03494dac09fe560ffbcdfce43ab1125', 'en', 'all_auto_add_new_service_if_the_service_doesnt_exists', 'All: Auto add new service if the service doesn\'t exists'),
(559, 'b926e15ba8921db054557fc52bf40c21', 'en', 'add_update_service', 'Add/Update service'),
(560, '2ee76c8a0f3202528b87b1fbac267685', 'en', 'service_lists_are_empty_unable_to_sync_services', 'Service lists are empty. Unable to sync services!'),
(561, 'fd6cbbffecc39c34cf801304fe9752c3', 'en', 'there_seems_to_be_an_issue_connecting_to_api_provider_please_check_api_key_and_token_again', 'There seems to be an issue connecting to API provider. Please check API key and Token again!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(562, 'ade5ec3948d7a6365a9f896d57ab3795', 'en', 'price_invalid_format', 'Price invalid format'),
(563, 'c5521226c0de427dc9e062d6b50ba335', 'en', 'auto_rounding_to_X_decimal_places', '(Auto rounding to %s decimal places)'),
(564, 'd8aae5e408bed09d3480f84c437d1dd9', 'en', 'sync_min_max_dripfeed', 'Sync Min, Max, DripFeed'),
(565, '9144ae3ac3f04ba2ee4954d43c185708', 'en', 'sync_new_price', 'Sync New Price'),
(566, '28b546466afcf6a2e3f7219db19410ca', 'en', 'sync_original_price', 'Sync Original Price'),
(567, '6074c90c5356302badb08b75c890df2d', 'en', 'auto_convert_to_new_currency_with_currency_rate_like_in', 'Auto convert to new currency with currency rate like in '),
(568, 'a14359570f8c53756f8adb73e9670ebc', 'en', 'currency_setting_page', 'Currency Setting page'),
(569, '97f097b2db9bc37c77c61bc81cc76441', 'en', 'auto_sync_services_setting', 'Auto Sync Services Setting'),
(570, 'f6634d84d2654898425d6e2ad82ee224', 'en', 'login_to_maintenace_mode', 'Login to Maintenace Mode'),
(571, '52abcd5b5210c4e8ed27afa5d06b1e26', 'en', 'use_admin_account', '(Use Admin account)'),
(572, '64966bbac9dc2bd9c41b782f9d7df792', 'en', 'the_website_is_in_maintenance_mode', 'The website is in maintenance mode'),
(573, 'f35f7720abe4819f0e07c638439cf6fc', 'en', 'were_undergoing_a_bit_of_scheduled_maintenance_sorry_for_the_inconvenience_well_be_backup_and_running_as_fast_as_possible', 'We\'re undergoing a bit of scheduled maintenance. Sorry for the inconvenience. We\'ll be backup and running as fast as possible!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(574, 'ad8c7ef29946e1b2c68a04d84748775b', 'en', 'displays_news__announcement_feature', 'Displays News & Announcement feature'),
(575, 'b7dccb9ce00db2cab2001f9ab2cae1c2', 'en', 'news__announcement', 'News & Announcement'),
(576, '9fd197125cd804e7f83fb854dd83c250', 'en', 'New_services', 'New services'),
(577, '95aa61985f3cb4c34f5f6ae7b25f24dc', 'en', 'Updated_services', 'Updated service'),
(578, 'b5a447792fa19eb846c74a0f1b663e54', 'en', 'Announcement', 'Announcement'),
(579, '129ccb1bf587b23d73f6d516df7f08fc', 'en', 'Disabled_services', 'Disabled services'),
(580, 'cf8a23443c92d66ac15d2cf5cae5bfef', 'en', 'View', 'View'),
(581, 'f739d126bcba7b7e9808fbf6765fd4bf', 'en', 'edit_news_announcement', 'Edit News/Announcement'),
(582, '4d9773a4029ef6895e6fff0fa9772aa0', 'en', 'Start', 'Start'),
(583, 'eeb66ab42eeaabe5f99f8c65ca9df9ff', 'en', 'whats_new_on_smartpanel', 'What\'s new on CheapestPanel'),
(584, '0b444f2cf85577f61ea1c65d39444c59', 'en', 'invalid_news_type', 'Invalid news type!'),
(585, 'bd7f06fccadd7d933a3da5a5c572576a', 'en', 'start_field_is_required', 'Start field is required'),
(586, '59503a641d0830392363c33bbee6755e', 'en', 'Description_field_is_required', 'Description field is required'),
(587, 'fc8dca02f57f08f7c58dd02679f4a5a0', 'en', 'expiry_field_is_required', 'Expiry field is required'),
(588, 'c687ea5e407d8a616829bf41915ac46b', 'en', 'Modules', 'Modules'),
(589, 'fbe249839b522a96b76f9e5ac30784b4', 'en', 'Purchased', 'Purchased'),
(590, '2891e56f3d47b7c877155e9197e12edf', 'en', 'Buy_now', 'Buy Now'),
(591, '3cef9a030ff41c3586cbec1647de7013', 'en', 'Upgrade_version', 'Upgrade to version '),
(592, '643b6b291306ec7f70a7603d4f6a5a68', 'en', 'Clear_all', 'Clear all'),
(593, 'ac1a194be4fdf32d97da224014f4acfa', 'en', 'Role', 'Role'),
(594, '3d4100d951fcc7899187272be261d705', 'en', 'IP_Address', 'IP_Address'),
(595, '35fd36d71d699acf45e0b80b0d8deb4e', 'en', 'Date_Time', 'DateTime'),
(596, 'ef37e025094939905c65d6248e0ba767', 'en', 'Check_in', 'Check in'),
(597, '11ef66662ec2b63218dc2d3eb20f067e', 'en', 'Check_out', 'Check out'),
(598, 'ff31e8c3d3469c92315981ab3e562a04', 'en', 'Banned_By', 'Banned By'),
(599, 'a4f455a406af8328026ae05042d06b88', 'en', 'newsletter', 'Newsletter'),
(600, 'c1ac52c29d506521cf6ac8ad1d5794b2', 'en', 'fill_in_the_ridiculously_small_form_below_to_receive_our_ridiculously_cool_newsletter', 'Fill in the ridiculously small form below to receive our ridiculously cool newsletter!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(601, '56c9f119f6631741552dca41a7ef5e2e', 'en', 'subscribe_now', 'Subscribe now'),
(602, 'd5ee5609ba308837bbeeb90126510a8e', 'en', 'you_subscribed_successfully_to_our_newsletter_thank_you_for_your_subsrciption', 'You subscribed successfully to our newsletter. Thank you for your subsrciption                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(603, 'f6ac9e0e11ee69d874359c13472f4f8e', 'en', 'an_error_occurred_while_subscribing_please_try_again', 'An error occurred while subscribing. Please try again.'),
(604, '2cb98b3873aa23b9f2d7d58df56685bf', 'en', 'a_subscriber_for_the_specified_email_address_already_exists_try_another_email_address', 'A subscriber for the specified email address already exists. Try another email address                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(605, 'c2dea61fbb509c3c4cea6c2143066ebe', 'en', 'cookie_policy_page', 'Cookie Policy Page'),
(606, '0186a78996118266a084bbb3b6c47da8', 'en', 'freekassa_confirm_form', 'Free-Kassa Confirm Form'),
(607, '177915afddb384fd3e6f7927c67ccfb5', 'en', 'choose_payment_method', 'Choose a payment Method'),
(608, 'c0f085368044d42db3a2c0141e5522b2', 'en', 'hesabe', 'Hesabe'),
(609, 'd0625018baad436d171a6e328b7a7483', 'en', 'the_system_will_convert_automatically_from_KWD_to_USD_and_add_funds_to_your_blance_when_payment_is_made', 'The system will convert automatically from KWD to USD and add funds to your blance when payment is made                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(610, 'b599fafec8f597f22a7619b5a812df6d', 'en', 'mercadopago_payment_form', 'Mercadopago payment form'),
(611, 'd7f54b9cb8871bbc1b7664253593be3d', 'en', 'card_holder_name', 'Card holder name:'),
(612, 'b43e222331b3697e809192d2df06a451', 'en', 'document_number', 'Document number:'),
(613, '89c96dad4c8f18e67b6d575ee81a564f', 'en', 'paytm_merchant_key', 'Paytm Merchant Key'),
(614, '78b16f0016014ed712241534135c979d', 'en', 'Paytm_mid_merchant_id', 'Paytm MID (Merchant ID)'),
(615, '2aa7f35d8bf095a3ce95d2527dbb5fe7', 'en', 'Paytm_Integration', 'Paytm Integration'),
(616, 'a3735861a3913ee13177b498bc9f4060', 'en', 'paytm_confirmation', 'Paytm confirmation'),
(617, 'c3f55a1951ab02fda950431ce196f894', 'en', 'the_system_will_convert_automatically_from_INR_to_USD_and_add_funds_to_your_blance_when_payment_is_made', 'Amount Will be Added Automatically After Succesfull Payment                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             '),
(618, '1c256a5ffc360d3cf5364e4a7bcf1844', 'en', 'payulatam_confirm_form', 'Payulatam Confirm Form'),
(619, '683ad45d996eb890d206ec790040f288', 'en', 'the_system_will_convert_automatically_from_cop_to_usd_and_add_funds_to_your_blance_when_payment_is_made', 'The system will convert automatically from COP to USD and add funds to your blance when payment is made                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(620, '76ccd9d6fce63496563ec77578b142f0', 'en', 'Paywant_Integration', 'Paywant Integration'),
(621, 'f485c76899ec501f5451775634660327', 'en', 'perfect_money', 'Perfect Money'),
(622, 'd98810f577d73680e770dc153582b508', 'en', 'perfect_money_integration', 'Perfect Money integration'),
(623, 'cab10525c64b8a8b9dd0f5ec9a6f5507', 'en', 'perfect_money_account_id_usd', 'Perfect Money Account ID (USD)'),
(624, '5388e273fe5e7cd51dafbbc9ae05f84f', 'en', 'perfect_money_confirmation', 'Perfect Money® Confirmation'),
(625, '70437894975dfa451c0f860a94ef1169', 'en', 'total_amount_usd_includes_fee', 'Total Amount (USD) (Includes fee):'),
(626, '75ce357eb868049800ec0f2df3d8e54d', 'en', 'webmoney', 'Webmoney'),
(627, '2f29f14c419792f54b0bd2bf736caf9f', 'en', 'get_your_social_accounts_followers_and_likes_at_one_place_instantly', 'Get Your Social Account\'s Followers And Likes At One Place, Instantly  with CheapestPanel                                        '),
(628, '90138726dae420e42f8578df6253e613', 'en', 'what_people_say_about_us', 'What People Say About Us'),
(629, '7645206562188e31720366e90ad81a35', 'en', 'our_service_has_an_extensive_customer_roster_built_on_years_worth_of_trust_read_what_our_buyers_think_about_our_range_of_service', 'Our service has an extensive customer roster built on trust’ worth of trust. Read what our buyers think about our range of service.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(630, '531b3a34736fb01684fe82bf3cce08cc', 'en', 'client_one', 'Harshad Sheelwant '),
(631, 'ca68029f199e7b88f16ed34f72347b15', 'en', 'client_one_jobname', 'Youtuber (Smokie Gaming)'),
(632, 'f9500a0b0084aa4e09d3e9c812683bae', 'en', 'client_one_comment', 'Thank you CheapesetPanel you skyrocketed My Instagram Page Thank you very much my Youtube Views were 40k in just 5 Mins Thank You!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        '),
(633, 'f9dc77a33a311967be239226feb3a1c4', 'en', 'client_two', 'Ananya Anand'),
(634, '4213a488facc77e23d1449f4abdcde88', 'en', 'client_two_jobname', 'Influencer'),
(635, 'f86caa6cae8443a49953f732d68d0bbf', 'en', 'client_two_comment', 'It\'s one of the best smm panel I have ever came across with all the services at one place without any hassle.                                                                                                                                                                                                                                                                                        '),
(636, 'e27dcc20d69cc7f78bcd8541826070eb', 'en', 'client_three', 'Sara-Jade Bevis');
INSERT INTO `general_lang` (`id`, `ids`, `lang_code`, `slug`, `value`) VALUES
(637, '7f8a3c63add8cd718865bcabaa78b271', 'en', 'client_three_jobname', 'Bloger'),
(638, '2598d0254e4d52fc4ce396d7328609d0', 'en', 'client_three_comment', 'Wow! This is amazing, i have been purchasing Instagram Likes for over a month and never got a delay! ? did a great job always                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                '),
(639, 'a3addce3f276dab1891a84333ea9d46c', 'en', 'we_have_several_services_that_you_can_opt_for_backed_by_our_comprehensive_guarantee_click_the_button_below_to_find_out_more', 'We have several services that you can opt for backed by our comprehensive guarantee – click the button below to find out more.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ');

-- --------------------------------------------------------

--
-- Table structure for table `general_lang_list`
--

CREATE TABLE `general_lang_list` (
  `id` int(11) NOT NULL,
  `ids` varchar(225) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `country_code` varchar(225) DEFAULT NULL,
  `is_default` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_lang_list`
--

INSERT INTO `general_lang_list` (`id`, `ids`, `code`, `country_code`, `is_default`, `status`, `created`) VALUES
(1, '2a4b53c9c07dbce757eea6a1a1eff1d7', 'en', 'GB', 1, 1, '2020-04-30 15:16:17');

-- --------------------------------------------------------

--
-- Table structure for table `general_news`
--

CREATE TABLE `general_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_news`
--

INSERT INTO `general_news` (`id`, `ids`, `uid`, `type`, `description`, `status`, `created`, `expiry`, `changed`) VALUES
(1, '7a1de07284c03eacff4da35d741e1d7d', 1, 'new_services', '&lt;p&gt;      &lt;strong&gt;​HOLI OFFER &lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;MODERN PERFECT PANEL CREATE ONLY :- 200 RUPEES YOUR DOMAIN AND HOSTING&lt;/strong&gt;&lt;/p&gt;', 1, '2021-03-28 00:00:00', '2021-03-30 00:00:00', '2021-03-28 10:14:00');

-- --------------------------------------------------------

--
-- Table structure for table `general_options`
--

CREATE TABLE `general_options` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_options`
--

INSERT INTO `general_options` (`id`, `name`, `value`) VALUES
(67, 'enable_https', '1'),
(68, 'enable_disable_homepage', '0'),
(69, 'website_desc', 'INDIAN OF SMM PANEL is the Best and INDIAN OF SMM PANEL in India, Join us now for all kind of Services like Facebook, Instagram, Youtube and much more!  24/7 Chat Support.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             '),
(70, 'website_keywords', 'best and YOUR SMM PANEL in india, top smm panel, smm panel in kerala, fastest smm panel, instagram, facebook, youtube, server, smm reseller, smm provider, social media service, pubg uc, buy instagram followers, buy youtube subscriber, likes, views, free, kerala \r\n \r\n                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               '),
(71, 'website_title', 'INDIAN OF SMM PANEL - Best Smm Panel in India'),
(72, 'website_favicon', 'https://i.postimg.cc/90zw702m/20210328-144420.png'),
(73, 'embed_head_javascript', ''),
(74, 'website_logo', ''),
(75, 'website_logo_white', ''),
(76, 'enable_service_list_no_login', '1'),
(77, 'disable_signup_page', '0'),
(78, 'notification_popup_content', '<p>OFFER...OFFER...OFFER!</p><p>HURRY..!</p><p><strong>On This Festive Season, Get Flat 10 Percent Cashback on Adding Funds to Wallet Using RazorPay. The minimum amount required is Rs.500 INR to Avail Offer.</strong></p><p><strong>Note: Offer valid till further notice.</strong></p><p><strong>Happy Shopping!</strong></p><p><strong>Regards,</strong></p><p><strong>CheapestPanel</strong></p>'),
(79, 'is_cookie_policy_page', '0'),
(80, 'enable_api_tab', '1'),
(81, 'contact_tel', '+91 8735020902'),
(82, 'contact_email', 'smmofdigital@gmail.com'),
(83, 'contact_work_hour', 'Mon - Sun 09:00 am - 11:00 pm'),
(84, 'social_facebook_link', ''),
(85, 'social_twitter_link', ''),
(86, 'social_instagram_link', ''),
(87, 'social_pinterest_link', ''),
(88, 'social_tumblr_link', ''),
(89, 'social_youtube_link', ''),
(90, 'copy_right_content', 'Copyright © 2021 - CheapestPanel'),
(91, 'embed_javascript', '&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n&lt;head&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n\r\n&lt;/body&gt;\r\n&lt;/html&gt;'),
(178, 'stripe_payment_transaction_min', ''),
(179, 'is_active_paytm_manual', '1'),
(180, 'paytm_number', ''),
(181, 'paytm_email', ''),
(182, 'paytm_password', ''),
(183, 'paytm_qr_url', ''),
(92, 'enable_notification_popup', '0'),
(93, 'enable_goolge_recapcha', '0'),
(94, 'currency_decimal_separator', 'dot'),
(95, 'currency_thousand_separator', 'comma'),
(96, 'currency_symbol', '₹'),
(97, 'currency_decimal', '2'),
(98, 'default_header_skin', 'lawrencium'),
(99, 'enable_news_announcement', '1'),
(100, 'terms_content', '<p>General Info</p><p>1)-If you are placing duplicate link while 1 is already in the process then it&#39;ll be your loss, no refunds for such orders will be made!</p><p><br>2)-We cannot guarantee the speed for any of the Instagram Followers Services, below 1$/k They can be instant, very fast, or may take up to 48 hours to get complete. We cannot cancel any order once placed. Order Accordingly.</p><p><br>3)-If your order has dropped under the start count, we will not refill your order. This is because your old followers are dropping and we are not covering your old orders. Thank you for your understanding.</p><p><br>4)- If you have a problem with any order (Such as dropped not completed) Please do not place another order before getting your Refund or Replacement for order, if you do so it will be your Loss We will not provide refunds for such cases as we do not know which server/order gets delivered and which does not.</p><p><br>5)- If your Followers/Likes Order is Partialled and service is with Guarantee we will not offer any Refills/Refunds in such cases as we partial because of your old drops especially counts like 500k, 1m, 2m, etc.</p><p>6)- If your order is dropped and you have placed new Order without refilling your old order. It will be your loss, we won’t be able to help you in this case.</p><p>7)- If You are ordering any Refill service and in between you used any No refill service, your refill validity will be over for your old orders.</p><p>8)- Please Note - If your Followers count is more than 1m then we suggest you use no refill service only, bcoz of old drops we won’t offer any refills for an account over 1m followers.</p><p>9)- If you are complaining \"Marked Done but not delivered\" after 1 day of completion of the order, please do not expect us to refund or re-deliver it for you. (for No refill Services)</p><p>10)- System will look at the start count when you put order and mark completed after reaching the final count. Please Don&#39;t ask us to cancel or anything with reason:\" views/likes/subscriber comes from my real user, My fans, another seller.</p><ul></ul><p> </p><p>Disclaimer:<br><strong>CheapestPanel </strong>will not be responsible for any damages you or your business may suffer.</p><p> </p><p>Liabilities:<br><strong>CheapestPanel </strong>is in no way liable for any account suspension or picture deletion done by YouTube or Soundcloud or Vine or Pinterest or Other Social Media.</p><p> </p><p> </p><p>Services</p><ol></ol><p>1. By placing an order with<strong> CheapestPanel</strong>, you automatically accept all the below-listed term of services whether you read them or not.</p><p>2. We reserve the right to change these terms of service without notice. You are expected to read all terms of service before placing every order to ensure you are up to date with any changes or any future changes.</p><p>3. You will only use the <strong>CheapestPanel</strong><strong> </strong>website in a manner which follows all agreements made with <strong>Soundcloud/Vine/Pinterest/Youtube/other social media</strong> site on their individual Terms of Service page.</p><p>4. <strong>CheapestPanel</strong><strong> </strong>rates are subject to change at any time without notice. The terms stay in effect in the case of rate changes.</p><p>5. <strong>CheapestPanel</strong><strong> </strong>does not guarantee a delivery time for any services. We offer our best estimation for when the order will be delivered. This is only an estimation and <strong>CheapesetPanel </strong>will not refund orders that are processing if you feel they are taking too long.</p><p>6. <strong>CheapestPanel</strong><strong> </strong>tries hard to deliver exactly what is expected of us by our resellers. In this case, we reserve the right to change a service type if we deem it necessary to complete an order.</p><p>7. We <strong>DO NOT</strong> guarantee your new followers will interact with you, we simply <strong>guarantee </strong>you to get the followers you pay for.</p><p>8. We <strong>DO NOT</strong> guarantee 100% of our accounts will have a profile picture, full bio, and uploaded pictures, although we strive to make this the reality for all accounts.</p><p>9. You will not upload anything into the<strong> CheapestPanel</strong><strong> </strong>site including nudity or any material that is not accepted or suitable for the YouTube or Soundcloud or Vine or Pinterest or Social Media community.</p><p>10. If your page had 100k+ followers/likes/views already before you order us, it will not cover refill protection, even if you order for refill server from us, as it&#39;s not possible to understand from where you lost the followers/likes/views. </p><p> </p><p> </p><p><strong>Refund Policy</strong></p><ul><li>Order Marked completed without done, Full Refund</li></ul><p> </p><ul><li>Order Not started within 5 days, Full Refund.</li></ul><p> </p><ul><li>We Provide partial Refund for all Refill services as Refill conditions.</li></ul><p> </p><ul><li>Orders placed in <strong>CheapestPanel</strong> will not be refunded or canceled after they are placed.</li></ul><p> </p><ul><li>You will receive a refund credit to your <strong>CheapestPanel</strong> account wallet if the order is non-deliverable.</li></ul><p> </p><ul><li>Misplaced or Private account orders will not qualify for a refund. Be sure to confirm each and every order before placing it.</li></ul><p> </p>'),
(101, 'policy_content', '<p>Privacy Policy</p><p> </p><p>HI THERE - WE RESPECT YOUR PRIVACY!</p><p>WE HATE PRIVACY BREACH AS MUCH AS YOU DO. BUT DURING THE TOTAL BUSINESS PROCESS WITH YOU, WE MIGHT NEED TO SHARE SOME OF YOUR DATA WITH THIRD PARTY. DETAILS OF OUR PRIVACY POLICY IS GIVEN BELOW. PLEASE NOTE THAT, BY PLACING ORDER WITH <strong>CheapestPanel</strong>, YOU AGREE WITH OUR TERMS AND CONDITIONS AND PRIVACY POLICY. WE MIGHT CHANGE THE PRIVACY POLICY TIME TO TIME.</p><p> </p><p><strong>PLEASE READ THE FOLLOWING CAREFULLY BEFORE PROCEEDING TO USE CheapestPanel:</strong></p><p><strong>Data Collection:</strong></p><p>This document describes the official privacy policy of CheapestPanel. The user is advised to read the privacy policy and ensure that he/she has no ambiguity with reference to any point of the Privacy Policy.</p><p>The user is informed that by visiting, using and continuing to use CheapestPanel or subscribing to any package of the Services, it shall be presumed that the user has accepted all the points of the Privacy Policy. If you do not agree to the Privacy Policy, please do not use CheapestPanel.in and the Services.</p><p> </p><p><strong>What information we collect:</strong></p><p>We might collect the following information from our user and use for the purpose of completing the transaction, job, and maintenance of our financial or strategic information:</p><p>• Name<br>• Business Name<br>• User name of the client’s social media account<br>• Email<br>• Phone number<br>• User preferences and history of internet use for optimization of the services by employing the cookies.</p><p> </p><p><strong>What are Cookies?</strong></p><p>The cookies are a small piece of data consisting of a text-only string of information introduced by a particular website and are stored in the hard disk of the machine. They collect data relating to the browsing preferences and history, and such other information the user has provided to the website.</p><p> </p><p><strong>Our Cookies</strong></p><p>Our cookies aim to give the user an optimal use of CheapestPanel.in. The collected information is also used for general marketing and statistical analysis. Our cookies do not collect personal data of user. Some cookies are communicated to the user’s hard disk by the third party. CheapestPanel has no affiliation with such party. CheapestPanel disclaims any liability arising from such cookies. The client is advised to read the respective policy of the third party or block their entrance.</p><p> </p><p><strong>How to Stop Cookies</strong></p><p>By default, the browsers are set to allow cookies. The user may opt to disable cookies if he/she does not want them to process in user’s machine by changing browser settings. It is also possible to configure browser setting allowing some and denying the others to have access to the user’s computer or set the browser to notify when a cookie knock. The ‘Help’ section of the browser may assist the user to manage the cookies preference.</p><p> </p><p><strong>Security and Confidentiality of the Information</strong></p><p>CheapestPanel respect the privacy of the user. CheapestPanel employs a sophisticated security system to make it sure that such information is within the trusted staff of CheapestPanel and uses it on the ‘need-to-know basis’. The payment-related information is encrypted with the help of the highly reliable technology SSL. CheapestPanel has taken all the possible steps to safeguard the information relating to the user is safe. CheapestPanel disclaims the liability in case of CheapestPanel fails to maintain the security due to the cause beyond the reasonable control.</p><p> </p><p><strong>Modifications</strong></p><p>CheapestPanel may change, modify or amend the Privacy Policy at any time without prior notice. The amended version of Privacy Policy shall immediately be effective after it is posted on CheapestPanel.in</p><p> </p><p> </p>'),
(102, 'is_maintenance_mode', '0'),
(103, 'auto_rounding_x_decimal_places', '2'),
(104, 'default_price_percentage_increase', '1'),
(105, 'is_auto_currency_convert', '1'),
(106, 'website_name', 'INDIAN OF SMM'),
(107, 'new_currecry_rate', '76'),
(108, 'enable_drip_feed', '1'),
(109, 'enable_attentions_orderpage', ''),
(110, 'currency_code', 'INR'),
(111, 'default_limit_per_page', '80'),
(112, 'default_home_page', 'pergo'),
(113, 'default_timezone', 'Asia/Kolkata'),
(114, 'is_clear_ticket', '0'),
(115, 'default_clear_ticket_days', '90'),
(116, 'default_min_order', ''),
(117, 'default_max_order', ''),
(118, 'default_price_per_1k', ''),
(119, 'default_drip_feed_runs', '10'),
(120, 'default_drip_feed_interval', '30'),
(121, 'enable_explication_service_symbol', '1'),
(122, 'enable_signup_skype_field', '0'),
(123, 'google_capcha_site_key', ''),
(124, 'google_capcha_secret_key', ''),
(125, 'is_active_paytm', '0'),
(126, 'paytm_payment_environment', 'PROD'),
(127, 'paytm_chagre_fee', '0'),
(128, 'paytm_currency_rate_to_usd', '1'),
(129, 'paytm_merchant_id', ''),
(130, 'paytm_merchant_key', ''),
(131, 'get_features_option', '1'),
(132, 'is_verification_new_account', '0'),
(133, 'is_welcome_email', '1'),
(134, 'is_new_user_email', '1'),
(135, 'verification_email_subject', '{{INDIAN OF SMM}} - Please validate your account'),
(136, 'verification_email_content', '<p><strong>Welcome to {{INDIAN OF SMM}}! </strong></p><p>Hello <strong>{{user_firstname}}</strong>!</p><p> Thank you for joining! We&#39;re glad to have you as community member, and we&#39;re stocked for you to start exploring our service.  If you don&#39;t verify your address, you won&#39;t be able to create a User Account.</p><p>  All you need to do is activate your account by click this link: <br>  {{activation_link}} </p><p>Thanks and Best Regards!</p>'),
(137, 'email_welcome_email_subject', '{{INDIAN OF SMM}} - Getting Started with Our Service!'),
(138, 'email_welcome_email_content', '<p><strong>Welcome to {{INDIAN OF SMM}}! </strong></p><p>Hello <strong>{{user_firstname}}</strong>!</p><p>Congratulations! <br>You have successfully signed up for our service - {{website_name}} with follow data</p><ul><li>Firstname: {{user_firstname}}</li><li>Lastname: {{user_lastname}}</li><li>Email: {{user_email}}</li><li>Timezone: {{user_timezone}}</li></ul><p>We want to exceed your expectations, so please do not hesitate to reach out at any time if you have any questions or concerns. We look to working with you.</p><p>Best Regards,</p>'),
(139, 'email_new_registration_subject', '{{INDIAN OF SMM}} - New Registration'),
(140, 'email_new_registration_content', '<p>Hi Admin!</p><p>Someone signed up in <strong>{{INDIAN OF SMM}}</strong> with follow data</p><ul><li>Firstname {{user_firstname}}</li><li>Lastname: {{user_lastname}}</li><li>Email: {{user_email}}</li><li>Timezone: {{user_timezone}}</li></ul>'),
(141, 'email_password_recovery_subject', '{{INDIAN OF SMM}} - Password Recovery'),
(142, 'email_password_recovery_content', '<p>Hi<strong> {{user_firstname}}! </strong></p><p>Somebody (hopefully you) requested a new password for your account. </p><p>No changes have been made to your account yet. <br>You can reset your password by click this link: <br>{{recovery_password_link}}</p><p>If you did not request a password reset, no further action is required. </p><p>Thanks and Best Regards!</p>'),
(143, 'email_payment_notice_subject', '{{INDIAN OF SMM}} -  Thank You! Deposit Payment Received'),
(144, 'email_payment_notice_content', '<p>Hi<strong> {{user_firstname}}! </strong></p><p>We&#39;ve just received your final remittance and would like to thank you. We appreciate your diligence in adding funds to your balance in our service.</p><p>It has been a pleasure doing business with you. We wish you the best of luck.</p><p>Thanks and Best Regards!</p>'),
(145, 'is_payment_notice_email', '1'),
(146, 'is_ticket_notice_email', '1'),
(147, 'is_ticket_notice_email_admin', '1'),
(148, 'is_order_notice_email', '1'),
(149, 'email_from', 'no-reply@cheapestpanel.in'),
(150, 'email_name', 'INDIAN OF SMM'),
(151, 'email_protocol_type', 'php_mail'),
(152, 'smtp_server', 'mail.cheapestpanel.in'),
(153, 'smtp_port', '465'),
(154, 'smtp_encryption', 'ssl'),
(155, 'smtp_username', 'no-reply@cheapestpanel.in'),
(156, 'smtp_password', 'cheapestpanel.in'),
(157, 'defaut_auto_sync_service_setting', '{\"price_percentage_increase\":50,\"sync_request\":0,\"new_currency_rate\":\"1\",\"is_enable_sync_price\":0,\"is_convert_to_new_currency\":0}'),
(158, 'payment_transaction_min', '1'),
(159, 'payment_environment', 'live'),
(160, 'is_active_paypal', '0'),
(161, 'paypal_chagre_fee', '4'),
(162, 'paypal_client_id', ''),
(163, 'paypal_client_secret', ''),
(164, 'is_active_stripe', '0'),
(165, 'stripe_chagre_fee', '3'),
(166, 'stripe_publishable_key', ''),
(167, 'stripe_secret_key', ''),
(168, 'is_active_2checkout', '0'),
(169, 'twocheckout_chagre_fee', '4'),
(170, '2checkout_publishable_key', ''),
(171, '2checkout_private_key', ''),
(172, '2checkout_seller_id', ''),
(173, 'is_active_manual', '1'),
(174, 'manual_payment_content', '                                '),
(175, 'cookies_policy_page', '<p><strong>Lorem Ipsum</strong></p>\r\n<p>Lorem ipsum dolor sit amet, in eam consetetur consectetuer. Vivendo eleifend postulant ut mei, vero maiestatis cu nam. Qui et facer mandamus, nullam regione lucilius eu has. Mei an vidisse facilis posidonium, eros minim deserunt per ne.</p>\r\n<p>Duo quando tibique intellegam at. Nec error mucius in, ius in error legendos reformidans. Vidisse dolorum vulputate cu ius. Ei qui stet error consulatu.</p>\r\n<p>Mei habeo prompta te. Ignota commodo nam ei. Te iudico definitionem sed, placerat oporteat tincidunt eu per, stet clita meliore usu ne. Facer debitis ponderum per no, agam corpora recteque at mel.</p>'),
(176, 'paytm_payment_transaction_min', ''),
(177, 'paypal_payment_transaction_min', ''),
(184, 'is_active_razor_pay', '0'),
(185, 'razor_pay_chagre_fee', '0'),
(186, 'razor_pay_publishable_key', ''),
(187, 'razor_pay_secret_key', ''),
(188, 'razor_pay_payment_transaction_min', ''),
(189, 'home_contact', ''),
(190, 'custom_home', '&lt;!DOCTYPE html>\r\n&lt;html&gt;\r\n&lt;head&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n\r\n&lt;/body&gt;\r\n&lt;/html&gt;'),
(204, 'Mobile_number_content', 'Mobile Number; '),
(191, 'custom_css', '&lt;!DOCTYPE html>\r\n&lt;html&gt;\r\n&lt;head&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n\r\n&lt;/body&gt;\r\n&lt;/html&gt;'),
(192, 'is_active_perfectmoney', '0'),
(193, 'is_active_coinbase', '0'),
(194, 'coinbase_chagre_fee', '4'),
(195, 'coinbase_payment_transaction_min', '100'),
(196, 'coinbase_api_key', ''),
(197, 'perfectmoney_chagre_fee', '4'),
(198, 'perfectmoney_payment_transaction_min', '100'),
(199, 'perfect_money_currency_code', 'USD'),
(200, 'perfect_money_account_usd_client_id', '100'),
(201, 'perfect_money_account_eur_client_id', ''),
(202, 'perfect_money_account_btc_client_id', ''),
(203, 'perfectmoney_alternate_passphrase', '');

-- --------------------------------------------------------

--
-- Table structure for table `general_purchase`
--

CREATE TABLE `general_purchase` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `pid` text DEFAULT NULL,
  `purchase_code` text DEFAULT NULL,
  `version` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_purchase`
--

INSERT INTO `general_purchase` (`id`, `ids`, `pid`, `purchase_code`, `version`) VALUES
(1, '8068ec7f79145fe55dea67dd63b012c3', '23595718', 'CheapesetPanel', '4.0');

-- --------------------------------------------------------

--
-- Table structure for table `general_sessions`
--

CREATE TABLE `general_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_sessions`
--

INSERT INTO `general_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('dcb2894854777ed5ddb6cc05700927619a170d65', '46.4.122.42', 1672117358, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323131373335373b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('9bfcbab4d71f8b5952a49c51267510fe318f3490', '45.76.178.195', 1672116412, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323131363431323b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('599b8ca269bd1e50ff7957838e6fd7345c99b1f2', '45.76.178.195', 1672116347, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323131363334373b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('2e34f36e0b5690c38bd8f65bd1e14188f3b4f9c4', '46.4.122.42', 1672115555, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323131353535353b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('2e2354fc93366bc72d3c65cda517a94599acea4f', '46.4.122.42', 1672113751, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323131333735303b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('b0e7386f98f7f1041ce18a47c1df37d5de83d90f', '157.245.144.200', 1672110851, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323131303835313b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('93f089c1539530c8cc444b59e8bd3389ec056853', '46.4.122.42', 1672111951, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323131313935313b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('f03aa5893cf8c6b1207878cbf971bb42302787ae', '46.4.122.42', 1672110141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323131303134313b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('39be1c5a8e3250c319c533ab6c5a388a36ceaaef', '45.76.178.195', 1672109663, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323130393636333b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('0770d0fe40f8e78409f9a82d5e5a7a19573c3999', '46.4.122.42', 1672108343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323130383334333b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('85caa5bee548a33e061fb426f342ab75fafb0c81', '46.4.122.42', 1672106553, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323130363535333b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('1eccf9f4e26ed4f0bf3e33577a5bd35892929c03', '46.4.122.42', 1672102976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323130323937363b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('ea934e3741b405ce13e7d7420b3dcaa7565937d5', '46.4.122.42', 1672104756, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323130343735363b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('243746f653048de33c3e7b1d51a9797bb9710251', '46.4.122.42', 1672101151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323130313135313b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('0e8d347f81f435e79282023652c134c48a142855', '46.4.122.42', 1672099357, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323039393335373b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('2931ee2f4c2bff7cefaf614b4578b087858f5a24', '66.249.72.27', 1672077883, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323037373838333b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('b36944290c91d647c724da35358e6902a6ed98b5', '66.249.72.27', 1672077882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323037373838323b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('5532df4530dcaf47dbd6685d91056402091518b1', '159.203.101.149', 1672064748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323036343734383b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('58cbef971a55fcd9ec45738abe455b17505a8bdd', '45.76.178.195', 1672064041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323036343034313b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('e1c11a885624cf5424d17b23070f5063f84fa230', '45.76.178.195', 1672064028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323036343032383b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('9809fb24eb6a80c6eed57015f9c812491b7812f7', '45.76.178.195', 1672063836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323036333833363b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('f0262e4e9bfd77655293a95322b64e735a708436', '45.76.178.195', 1672063655, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323036333635353b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('2ed71e324f601d897cb53791f07ccd2a3a537328', '45.76.178.195', 1672063800, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323036333830303b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('0865f7a032615cb6731f1084b0eae03969553552', '45.76.178.195', 1672063456, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323036333435363b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('fc0951840a5a6862969a495d7ef52800d492fe54', '45.76.178.195', 1672063009, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323036333030393b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('adf0e6494ccc58b928f9b0569a604b075fe9fadd', '35.88.207.153', 1672055249, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323035353234393b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('e782b225a2c213d1d890f13ac640596d40ff27dc', '45.76.178.195', 1672062972, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323036323937323b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('9b20080e12b460eb108868deaf5aa67877b514b6', '35.88.207.153', 1672055240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323035353234303b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('de47dac2f39725a9f66d7df040d926dbc4a25e99', '20.213.84.134', 1672052811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323035323831313b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('4ba2b440332fdcf64d10106cfd6e3ff8906923f7', '143.47.184.251', 1672045671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323034353637313b),
('82ca8070ed965b35fe5703af7a1e7462a3ebb5d2', '66.249.72.19', 1672049304, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323034393330343b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('3ae207f04ba17ef525c2f4372c828b60a58aaed6', '79.137.64.63', 1672050081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323035303038313b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('f1f5207f92a58b30f780a849bcc3bba6ec3b4e58', '199.244.88.224', 1672043319, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323034333331393b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('c2518463068449abea6786e0cf50f6e8caca96a1', '66.249.72.27', 1672043046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323034333034363b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('7911bc3daeaf73a71a8dbabc660c2303cc5803cf', '34.254.53.125', 1672038562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323033383536323b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('4d121d2b74cb38db48f896ce3da6d348de3b8e4e', '15.235.9.101', 1672041568, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323034313536383b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('9f454c2f98d5a00301a2843d21c627ec4f87b010', '34.254.53.125', 1672038561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323033383536313b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('158ffd0c79a9e41bc110c0a56ff824c17924a4c1', '34.254.53.125', 1672038561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323033383536313b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('49371bfa8701d8a03c3f1d140dc214368542434f', '34.254.53.125', 1672038547, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323033383534373b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('f1d32df30232998850075c78beeb5c087c89a4b9', '34.254.53.125', 1672038546, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323033383534363b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('4314f8bc2a9b9f75dabc87b76a58041590c91faa', '34.254.53.125', 1672038546, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323033383534363b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('8959e88fe887467002865ef90b0ecb82cb5294e1', '34.254.53.125', 1672038518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323033383531383b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('b32c29882f3b73989caf53919ef0710ea918979f', '34.254.53.125', 1672038517, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323033383531373b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('63f7312ca9deeedaf504685ec08fa6f141bc5e6a', '34.254.53.125', 1672038517, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323033383531373b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('5b917b2194cc380e21b55feffe7e30453dfcbc54', '66.249.72.19', 1672037480, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323033373438303b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('440a23618b43d303aa68cd3c786927681baa5d66', '66.249.72.19', 1672033641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323033333633393b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('3f4ce1c19346189da99e3920d928834a3a3f0dd7', '68.69.184.202', 1672033410, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323033333431303b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('a2f91a2b2c0e81a75e1d97a1e70b19a1128165cd', '205.169.39.63', 1672029324, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032393332343b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('29cdaaf684fccb69ed5dfde456cda9f8b11cf419', '205.169.39.63', 1672029324, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032393332343b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('1e2fe4d7ef41774551990aedae4d4198d641768c', '209.126.86.35', 1672028511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032383531313b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('2642eb7cda4c89cd7f4b4f96ad341f6b03251768', '209.126.86.35', 1672028509, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032383530393b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('0ddaf51312cf34c84b3c8ac887133cf3b6211a27', '68.183.116.148', 1672027749, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032373734393b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('e978137338ddbef1ecefcc0d64414cad51f22965', '147.182.184.235', 1672027754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032373735343b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('803f7768aaa4cda46e8d29a9e569de7ee33f00d0', '165.227.232.121', 1672027766, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032373736363b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('775c0e3abe3f5e1e8d563f891aa197f8714110fd', '128.199.221.69', 1672027767, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032373736373b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('1c5dd1642a19a1783c90d915c2eddd9a970909ea', '139.59.135.127', 1672027767, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032373736373b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('fc1084cebf87f0b685b510a7f835e2f5da9be75c', '89.45.90.24', 1672027767, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032373736373b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('296102260ae38ac4e90ff23960b259b603a2cbd8', '165.227.232.121', 1672027768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032373736383b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('9f778ad8d1cca9757493502115eff380db8ce806', '165.227.232.121', 1672027768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032373736383b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('b2a029d0ab54c8f96e68cb531e59807967891052', '139.59.135.127', 1672027768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032373736383b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('67a34a32fdd78aca0fbc378b088c5dad8088b66d', '139.59.135.127', 1672027769, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032373736393b),
('7d7eafad616306af6b78d42235d42ca08e783e6d', '165.227.232.121', 1672027769, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032373736393b),
('4d842d270c8d559a4262e2ff6a5db35716e9dec0', '139.59.135.127', 1672027769, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032373736393b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('4cf3a2a5e2e1ae83462304e0f63992c21c1a7bdd', '128.199.221.69', 1672027771, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032373737313b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('6a8ee85552a8763850c08c5cebf65c5cddd0b115', '128.199.221.69', 1672027771, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032373737313b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('fc1eb648c42569e0164ceed844204995869d4ead', '128.199.221.69', 1672027772, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032373737323b),
('6e41db64245b32087e90e596d8a2da3f9b8954ba', '157.38.131.156', 1672027810, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032373831303b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('fcf6bee358b6a1aac4fe3677a6dac3e12a6442d1', '27.58.217.113', 1672028378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032373835353b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d7569647c733a313a2231223b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31353a2261646d696e406d6f6869742e636f6d223b733a31303a2266697273745f6e616d65223b733a353a2241646d696e223b733a393a226c6173745f6e616d65223b733a353a2270616e656c223b733a383a2274696d657a6f6e65223b733a31323a22417369612f4b6f6c6b617461223b7d),
('b13e853ab10983683d61772452058e143e3b929b', '148.113.142.71', 1672027931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032373933313b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('ebc1aa1819371f80ac273b533cab2a6a3996176c', '148.113.140.42', 1672027935, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323032373933353b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('b1854af483e6369256fd60775f67d0c5ec9fe3a6', '46.4.122.42', 1672119147, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323131393134373b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('acae6fa18c3a1060b57206b3fc3130ea36788403', '46.4.122.42', 1672120954, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323132303935343b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('c5d8d189e24c052cb903d3bd565072b6ca8da5df', '143.198.206.219', 1672120973, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323132303937303b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('32addbdb2c15c6395f94cbdb7f783f09171cc558', '170.64.137.45', 1672122621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323132323630353b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('309ad7769b6cf76ede7766880d485f4adb866539', '46.4.122.42', 1672122778, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323132323737383b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('7e15e2b5540909538b462167cdb802e8b82f1434', '46.4.122.42', 1672124536, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323132343533363b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('ec5bf3e77b4936c34815a80fed0aac16848afe33', '46.4.122.42', 1672126340, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323132363334303b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('ddf05c130985f5550b9e5012be4dbe2b1116d72e', '132.154.33.252', 1672126633, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323132363632353b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('1b7e2c1296d35e82c23c09f487d1241cbcaf3dbf', '46.4.122.42', 1672128129, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323132383132393b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('4ce4a5e7cb610bc25bd496f9c864e0dbe4026e9f', '46.4.122.42', 1672129943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323132393934333b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('376b10478ce73122aa2c0efe630ae062f1cbf19c', '46.4.122.42', 1672131735, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323133313733353b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('415c516d6f75ba4b3ca0caa7e4befa85c13658da', '106.223.221.214', 1672132828, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323133323832383b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('686b6ff4836cae7dce0a82fe63515d3f9a06adfc', '82.180.143.155', 1672132935, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323133323933353b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d);
INSERT INTO `general_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('accc9ff48fe524893f941449d512ed3b35f47ff6', '82.180.143.155', 1672132949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323133323934393b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('8b4b7bf74b50df1a35c71378d6d1257669e768e1', '46.4.122.42', 1672133532, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323133333533323b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('de53a2216a8555c31cdc69e724ffd892e122b3d3', '82.180.143.155', 1672134310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323133343331303b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('8e3ea99e34b5a729210dbd37f72167cfc1e50eb2', '82.180.143.155', 1672134579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323133343537393b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('f62f846e3fcbf33a7af8acc8f91122b14d4e85dc', '82.180.143.155', 1672134599, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323133343539393b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('d0324914b1c09789307d4f5e85fb168870e0486e', '82.180.143.155', 1672134810, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323133343831303b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('15090f1852c8beffc3815d02ca3a78ac5a985609', '46.4.122.42', 1672135338, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323133353333383b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('708f79f11a18e5955ae4c4c50e70bf56296fa1aa', '82.180.143.155', 1672136168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323133363136383b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('0f0d8d12d521756eaadf62d45a31b8c992464dd2', '82.180.143.155', 1672136198, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323133363139383b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('cbd3b83d4901190ca599f43b69dd79150173c11e', '46.4.122.42', 1672137133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323133373133333b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('443a6b1e9bb10878b9d5062ee2e27a2bc3a8365c', '46.4.122.42', 1672138945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323133383934353b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('d94bd821d7032fc923c087389501bc2048621412', '46.4.122.42', 1672140732, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323134303733323b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('7f52403813de3e4b5fcef6b9adbd4e86a7f051a8', '46.4.122.42', 1672142537, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323134323533373b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('53cbf54131a4581bad400c708b7ec14dd619c81f', '46.4.122.42', 1672144346, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323134343334363b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('23895fae0443ccb27ac7bcde2219575387aece7b', '68.183.42.117', 1672145886, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323134353838363b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('05d10da2daf676d50f058a0837175391eb0031cd', '46.4.122.42', 1672146153, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323134363135333b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('59b0df225da2d5d78ae6d31c55f380104745801c', '66.249.79.81', 1672146347, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323134363334373b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('55425956c5124f4c2c03e4680a3eadad1e284201', '46.4.122.42', 1672147936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323134373933363b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('ab874b848d0b0d7d8832de40df038475cb6eee96', '46.4.122.42', 1672149739, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323134393733393b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('b274cba63dad4c68fb5319a0d3f821936c505033', '35.205.159.124', 1672149868, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323134393836383b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d),
('8d9e40a2b7a299584459d21ca031969fcf370cbb', '27.58.28.200', 1672150981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323135303434383b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223261346235336339633037646263653735376565613661316131656666316437223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30342d33302031353a31363a3137223b7d7569647c733a313a2231223b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a353a2261646d696e223b733a353a22656d61696c223b733a32343a2261646d696e40746563686e6963616c766972616c2e636f6d223b733a31303a2266697273745f6e616d65223b733a393a22546563686e6963616c223b733a393a226c6173745f6e616d65223b733a353a22566972616c223b733a383a2274696d657a6f6e65223b733a31323a22417369612f4b6f6c6b617461223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `general_subscribers`
--

CREATE TABLE `general_subscribers` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_transaction_logs`
--

CREATE TABLE `general_transaction_logs` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `transaction_id` text DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_users`
--

CREATE TABLE `general_users` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `login_type` text DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `timezone` text DEFAULT NULL,
  `more_information` text DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `balance` decimal(15,4) DEFAULT 0.0000,
  `custom_rate` int(11) NOT NULL DEFAULT 0,
  `api_key` varchar(191) DEFAULT NULL,
  `spent` varchar(225) DEFAULT NULL,
  `activation_key` text DEFAULT NULL,
  `reset_key` text DEFAULT NULL,
  `history_ip` text DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `profile_img` varchar(300) DEFAULT '/assets/images/profile.png'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_users`
--

INSERT INTO `general_users` (`id`, `ids`, `role`, `login_type`, `first_name`, `last_name`, `email`, `password`, `timezone`, `more_information`, `settings`, `desc`, `balance`, `custom_rate`, `api_key`, `spent`, `activation_key`, `reset_key`, `history_ip`, `status`, `changed`, `created`, `profile_img`) VALUES
(1, 'bd28e759934f6cde01e319d077c52201', 'admin', NULL, 'Technical', 'Viral', 'admin@technicalviral.com', '$2a$08$8i0RQw96ProryKa2K7ldbeCwoLJSRcYlSGCDTYtIh1g4nzijuZSTS', 'Asia/Kolkata', '{\"website\":\"\",\"phone\":\"\",\"what_asap\":\"\",\"skype_id\":\"\",\"address\":\"\"}', NULL, NULL, '9864.7800', 0, '1kQ4qoqMBUtMHf1XnS8yvclK9QbrXfHs', NULL, '5f545ad6526d0c678a96bb48c4aebbe8', 'b09f7e0d180379f40dd92e7bc75bdd58', '27.58.28.200', 1, '2022-12-27 14:22:54', '2020-12-20 10:40:33', '/assets/images/profile.png');

-- --------------------------------------------------------

--
-- Table structure for table `general_user_block_ip`
--

CREATE TABLE `general_user_block_ip` (
  `id` int(11) NOT NULL,
  `ids` varchar(100) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `general_user_logs`
--

CREATE TABLE `general_user_logs` (
  `id` int(11) NOT NULL,
  `ids` varchar(100) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `country` text DEFAULT NULL,
  `type` int(1) DEFAULT 1 COMMENT '1 - login, 0 - logout',
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_user_logs`
--

INSERT INTO `general_user_logs` (`id`, `ids`, `uid`, `ip`, `country`, `type`, `created`) VALUES
(1, '133caea307ae4c0b259db264c6aed388', 1, '42.111.213.2', 'India', 1, '2021-03-28 05:44:10'),
(2, '626f17b869f9f27659751a9f4009431c', 1, '106.213.197.30', 'India', 0, '2021-03-28 06:17:17'),
(3, '9ab08643c2062b54069ac0449d6cbb1b', 1, '106.213.197.30', 'India', 1, '2021-03-28 06:31:56'),
(4, 'ae71f7a2ef7e17391e274ebb4421c231', 2, '106.213.197.30', 'India', 0, '2021-03-28 06:33:22'),
(5, 'bb4061cc2d08c254cd2503f648198387', 3, '103.255.4.85', 'Pakistan', 0, '2021-03-28 06:33:42'),
(6, 'a795730f1b29541e6b8e41bcba57c6f5', 2, '106.213.197.30', 'India', 0, '2021-03-28 06:34:19'),
(7, 'f595ac5699341b8d520fa96e161b7348', 1, '106.213.197.30', 'India', 1, '2021-03-28 06:34:37'),
(8, '5ce575908e7d982bd3c42d858f0341e4', 4, '103.78.151.4', 'India', 0, '2021-03-28 08:05:08'),
(9, 'c321ce6833aa6ae340633460a72a32eb', 1, '106.213.197.30', 'India', 0, '2021-03-28 09:15:09'),
(10, 'e6f29ea74cd277f6c0212a9e2980c6b6', 1, '106.213.197.30', 'India', 1, '2021-03-28 09:18:28'),
(11, '45ce5bafa6ff1d8e05e1b1f95e0d5699', 1, '106.213.197.30', 'India', 0, '2021-03-28 09:19:15'),
(12, '601347d246fb9f918d63a92f84b1e4fe', 1, '106.213.197.30', 'India', 1, '2021-03-28 09:19:27'),
(13, '0d814582cb27dc87ec3d95c4cd0e4ce1', 1, '106.213.197.30', 'India', 0, '2021-03-28 09:30:40'),
(14, '5e4a79cfef571f98581687af7670e3a1', 5, '106.213.197.30', 'India', 0, '2021-03-28 09:31:29'),
(15, '5d3138f9cc264c20598fce3c92f27ebe', 5, '106.213.197.30', 'India', 0, '2021-03-28 09:35:54'),
(16, '1f5247edeff2e3dcc34670daeb5585e2', 1, '106.213.197.30', 'India', 1, '2021-03-28 09:36:05'),
(17, '189823b236e89d4989dfa491c5ec2f23', 1, '42.111.208.175', 'India', 1, '2021-03-28 10:05:19'),
(18, '2127160bf391c82338b2eab0667c3257', 1, '42.111.208.175', 'India', 0, '2021-03-28 10:14:10'),
(19, 'd8e24ed32b71b552655766e27603f14e', 1, '42.111.208.175', 'India', 1, '2021-03-28 10:16:09'),
(20, '03016b4e178c65c495b99de699544c97', 1, '42.111.208.175', 'India', 0, '2021-03-28 10:28:15'),
(21, 'bae94ee10e5f9ddaf552925f92b348c9', 1, '42.111.208.175', 'India', 1, '2021-03-28 10:30:28'),
(22, 'f71fa291b714180ca2d15af27288b364', 6, '106.79.194.103', 'India', 0, '2021-03-28 10:32:49'),
(23, '6cc645bc71a2f708e1d0a34447987ace', 7, '132.154.81.195', 'India', 0, '2021-03-28 13:02:08'),
(24, '4c14a983a9f3b3048430e9575a63033e', 1, '27.61.184.11', 'India', 1, '2021-03-28 13:06:14'),
(25, '2af7b640f93ae77722bfb95238bc9c08', 8, '157.42.146.131', 'India', 0, '2021-03-28 14:23:24'),
(26, '5884be80742eeba392ef7a1f07fe36e1', 9, '106.76.69.221', 'India', 0, '2021-03-28 18:26:10'),
(27, 'f46ae0398540131e111d0bde1701f86b', 9, '106.76.69.221', 'India', 0, '2021-03-28 18:30:49'),
(28, '0f52ffcebd97a1efa0caae307c31d6e2', 1, '42.111.208.26', 'India', 0, '2021-03-29 03:08:32'),
(29, 'f944f77497445654886659e82b6857c0', 1, '42.111.208.26', 'India', 1, '2021-03-29 03:10:14'),
(30, '6cdd25914f0aa9efb8efadea09a2b2cf', 1, '42.111.208.26', 'India', 1, '2021-03-29 03:11:07'),
(31, '75b93ff0e69e40696ffc904a7d44bfa9', 1, '42.111.208.26', 'India', 0, '2021-03-29 03:26:06'),
(32, '08d86f7f776753f0642a58ab533960ff', 1, '42.111.208.26', 'India', 1, '2021-03-29 03:27:42'),
(33, '6e22686432ef5141da5b39c6eb45e929', 1, '42.111.208.26', 'India', 0, '2021-03-29 03:35:21'),
(34, '9015d3e25d104893ed84c4c13da61ec3', 10, '42.111.208.26', 'India', 0, '2021-03-29 03:35:54'),
(35, 'e97cc9bc0731d9cde20adc76a86ecbcc', 10, '42.111.208.26', 'India', 0, '2021-03-29 03:42:44'),
(36, '93fb49b99df3b3670de8a6224b549063', 1, '42.111.208.26', 'India', 1, '2021-03-29 03:42:50'),
(37, 'e2c1e4a92dc76069861d3dc1525f6d3e', 1, '27.58.217.113', 'Unknown', 1, '2022-12-26 04:17:39'),
(38, 'bfee558aaf5494a9b3e5e9336c8e53aa', 1, '27.58.28.200', 'Unknown', 1, '2022-12-27 14:14:29'),
(39, '82e04df3ff19ce70d41150b53e423e9e', 1, '27.58.28.200', 'Unknown', 0, '2022-12-27 14:15:23'),
(40, '80495765acf7e9bc1dede4d6a4590894', 1, '27.58.28.200', 'Unknown', 1, '2022-12-27 14:15:38'),
(41, 'd7cc6807760a2871247584e6d12475e5', 1, '27.58.28.200', 'Unknown', 0, '2022-12-27 14:21:58'),
(42, '7301d0ff9663a9450abfcebac8ccc6bd', 1, '27.58.28.200', 'Unknown', 1, '2022-12-27 14:22:17');

-- --------------------------------------------------------

--
-- Table structure for table `general_user_mail_logs`
--

CREATE TABLE `general_user_mail_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `received_uid` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `ids` text CHARACTER SET utf8 DEFAULT NULL,
  `type` enum('direct','api') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'direct',
  `cate_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_order_id` int(11) DEFAULT NULL,
  `service_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `api_provider_id` int(11) DEFAULT NULL,
  `api_service_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_order_id` int(11) DEFAULT 0,
  `uid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usernames` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hashtags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hashtag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_posts` int(11) DEFAULT NULL,
  `sub_min` int(11) DEFAULT NULL,
  `sub_max` int(11) DEFAULT NULL,
  `sub_delay` int(11) DEFAULT NULL,
  `sub_expiry` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_response_orders` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_response_posts` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_status` enum('Active','Paused','Completed','Expired','Canceled') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(15,4) DEFAULT NULL,
  `status` enum('completed','processing','inprogress','pending','partial','refunded','canceled') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `start_counter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `remains` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `is_drip_feed` int(1) DEFAULT 0,
  `runs` int(11) DEFAULT 0,
  `interval` int(2) DEFAULT 0,
  `dripfeed_quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `original_price` decimal(15,4) DEFAULT NULL,
  `min` int(50) DEFAULT NULL,
  `max` int(50) DEFAULT NULL,
  `add_type` enum('manual','api') DEFAULT 'manual',
  `type` varchar(100) DEFAULT 'default',
  `api_service_id` varchar(200) DEFAULT NULL,
  `api_provider_id` int(11) DEFAULT NULL,
  `dripfeed` int(1) DEFAULT 0,
  `status` int(1) DEFAULT 1,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('new','pending','closed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_providers`
--
ALTER TABLE `api_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_custom_page`
--
ALTER TABLE `general_custom_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_file_manager`
--
ALTER TABLE `general_file_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_lang`
--
ALTER TABLE `general_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_lang_list`
--
ALTER TABLE `general_lang_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_news`
--
ALTER TABLE `general_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `general_options`
--
ALTER TABLE `general_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_purchase`
--
ALTER TABLE `general_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_sessions`
--
ALTER TABLE `general_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `general_subscribers`
--
ALTER TABLE `general_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_transaction_logs`
--
ALTER TABLE `general_transaction_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_users`
--
ALTER TABLE `general_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_user_block_ip`
--
ALTER TABLE `general_user_block_ip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_user_logs`
--
ALTER TABLE `general_user_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_user_mail_logs`
--
ALTER TABLE `general_user_mail_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_messages_user_id_foreign` (`uid`),
  ADD KEY `ticket_messages_ticket_id_foreign` (`ticket_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_providers`
--
ALTER TABLE `api_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `general_news`
--
ALTER TABLE `general_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_options`
--
ALTER TABLE `general_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `general_purchase`
--
ALTER TABLE `general_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_subscribers`
--
ALTER TABLE `general_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_transaction_logs`
--
ALTER TABLE `general_transaction_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_users`
--
ALTER TABLE `general_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `general_user_block_ip`
--
ALTER TABLE `general_user_block_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_user_logs`
--
ALTER TABLE `general_user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `general_user_mail_logs`
--
ALTER TABLE `general_user_mail_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=965;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
