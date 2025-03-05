-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 05, 2025 at 08:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ml_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complains`
--

CREATE TABLE `complains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `complain_id` varchar(30) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `hotel_id` bigint(20) DEFAULT NULL,
  `hotel_section_id` bigint(20) DEFAULT NULL,
  `complain_category_id` bigint(20) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `complain` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `reply` text DEFAULT NULL,
  `rejection_remarks` text DEFAULT NULL,
  `customer_feedback` text DEFAULT NULL,
  `customer_rating` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `complains`
--

INSERT INTO `complains` (`id`, `complain_id`, `name`, `email`, `mobile`, `hotel_id`, `hotel_section_id`, `complain_category_id`, `source`, `complain`, `status`, `reply`, `rejection_remarks`, `customer_feedback`, `customer_rating`, `created_at`, `updated_at`) VALUES
(2, 'CF000000002', 'J.kyprianous', 'Jaxkyp657@gmail.com', '0401036180', 2, 17, 7, '1', 'Good job', 1, NULL, NULL, NULL, NULL, '2024-02-11 07:31:04', '2024-02-11 07:31:04'),
(4, 'CF000000004', 'Arend', 'Arend.boog@transport.nsw.gov.au', NULL, 2, 51, 15, '1', 'AC not working on arrival. Staff had to reprogram the remote at 10:30pm because room was hot.\r\nFamily above was thumping around well after midnight.\r\nBooking was said to include parking and breakfast; they weren’t.\r\nUnlikely to stay again.', 1, NULL, NULL, NULL, NULL, '2024-02-13 05:39:15', '2024-02-13 05:39:15'),
(5, 'CF000000005', 'Angela  Wood', 'academyangelawood@gmail.com', '07305294764', 2, 23, 14, '1', 'Very happy but inside front door need cleaning once inside room so gives wrong impression cleaners are missing them out in thier cleaning but would still use again', 1, NULL, NULL, NULL, NULL, '2024-02-16 12:53:49', '2024-02-16 12:53:49'),
(16, 'CF000000006', 'Prema Thasarathan Rajaratnam', 'dhashi09@gmail.com', '0405289187', 2, 6, 6, '1', 'Test', 2, 'Replaying to test', NULL, NULL, NULL, '2024-02-19 03:58:20', '2024-02-19 04:48:58'),
(17, 'CF000000017', 'Ziyingwang', 'ziyingwang001227@163.com', '457031741', 2, 277, 10, '1', 'wsjsjsn', 1, NULL, NULL, NULL, NULL, '2024-03-02 10:55:04', '2024-03-02 10:55:04'),
(18, 'CF000000018', 'Courtney', 'c_evans2@outlook.com', NULL, 2, 50, 1, '1', 'Absolutely disgusting. Walking into the room the hallway smelt stale. Opening our door the instant smell of human urine was so strong. After investigation it was both lounges that smelt so strong of urine we removed the cushions to place outside. We complained to reception and they bought up a spray bottle with a chemical in it and sprayed over the floor throughout. We went and bought air fresheners and placed throughout the motel to try get rid of the smell and didn\'t have a place to sit anymore as it was all outside where we put it. \r\nThere was cock roaches throughout the place and all in the kitchen where the stove wasn\'t clean and still had oil over it. There is mould growing on walls. What you pay for this motel is way not worth it. No offer of moving us rooms just a spray bottle. Absolutely disgusting and will NEVER be back', 1, NULL, NULL, NULL, NULL, '2024-03-16 10:51:51', '2024-03-16 10:51:51'),
(19, 'CF000000019', 'Sophie', 'Raycaarroll92@hotmail.com', '0424000018', 2, 33, 10, '1', 'Oik', 1, NULL, NULL, NULL, NULL, '2024-03-19 14:07:19', '2024-03-19 14:07:19'),
(20, 'CF000000020', 'A', 'cfs.adrian@yahoo.com.au', '0411066711', 2, 18, 5, '1', 'No', 1, NULL, NULL, NULL, NULL, '2024-03-22 11:45:48', '2024-03-22 11:45:48'),
(21, 'CF000000021', 'Scott', 'daddy_scott@live.com', '0413131390', 2, 46, 5, '1', 'It was greqt. Thank you', 1, NULL, NULL, NULL, NULL, '2024-03-24 04:00:55', '2024-03-24 04:00:55'),
(22, 'CF000000022', 'Jason MacBeth', 'NSWG.AP@FCMTRAVEL.COM.AU /', '+61 438040798', 2, 37, 1, '2', 'No HK Task List -Mid Stay Clean for this stay', 2, 'As per Nabin, guest complained  and HK Task was manually added by kai in his booking and Ruby to investigate', NULL, NULL, NULL, '2024-04-09 13:40:39', '2024-04-09 13:42:01'),
(23, 'CF000000023', 'Vivek Kumar Gupta', 'vthakur@yamaha-motor-india.com', NULL, 2, 31, 3, '3', 'There is blockage of water in wash room', 1, NULL, NULL, NULL, NULL, '2024-04-11 03:14:56', '2024-04-11 03:14:56'),
(24, 'CF000000024', 'Mr Nafly Azhar', 'n/a', NULL, 1, 103, 3, '2', 'as per message of FO : Apt # 56 Problem with door lock | maintenance team is working on it | transferred the guest due to arrive to a different room - room 47', 1, NULL, NULL, NULL, NULL, '2024-04-11 09:15:34', '2024-04-11 09:15:34'),
(25, 'CF000000025', 'Vishal Kumar Thakur', 'vthakur@yamaha-motor-india.com', NULL, 2, 81, 10, '3', 'Internet connection in both room is very poor and not able to work . It’s really difficult to connect with team in india', 1, NULL, NULL, NULL, NULL, '2024-04-12 03:09:50', '2024-04-12 03:09:50'),
(26, 'CF000000026', 'Vivek Kumar Gupta', 'vthakur@yamaha-motor-india.com', NULL, 2, 31, 10, '3', 'Internet connection in both room is very poor and not able to work . It’s really difficult to connect with team in india', 1, NULL, NULL, NULL, NULL, '2024-04-12 03:10:33', '2024-04-12 03:10:33'),
(27, 'CF000000027', 'Zoe (Zeke) Ryan', 'zryan.350061@guest.booking.com', 'N/A', 3, 154, 11, '1', 'As per Lynn-HK \"We need a new shower mixer in the room 604 , this one is making some noise and is turning hard\" Daniel said no need to change room he was able to rectify the complaint', 1, NULL, NULL, NULL, NULL, '2024-04-12 09:12:00', '2024-04-12 09:12:00'),
(28, 'CF000000028', 'Zoe (Zeke) Ryan', 'zryan.350061@guest.booking.com', 'N/A', 3, 154, 11, '1', 'As per Lynn-HK \"We need a new shower mixer in the room 604 , this one is making some noise and is turning hard\" Daniel said no need to change room he was able to rectify the complaint', 1, NULL, NULL, NULL, NULL, '2024-04-12 09:12:00', '2024-04-12 09:12:00'),
(29, 'CF000000029', 'Shaun Norman', 'hana.mose@homes.nsw.gov.au', NULL, 1, 86, 5, '2', 'guest was asked to check out as per message of FO :\r\n\r\nDrunk , Sleeping in corridor, Bring people from out side, Making noise disturbing to other room guest.', 1, NULL, NULL, NULL, NULL, '2024-04-15 06:08:03', '2024-04-15 06:08:03'),
(30, 'CF000000030', 'DANIEL PETER WYBER', 'n/a', NULL, 3, 138, 4, '1', 'copied message of FO :\r\n\r\nguest was complaining about there is a baby next door and he is crying all the night and he cannot sleep and also aircon indoor unit was making some noise but i asked vinko to have a look and he said it is fine and this unit is replaced recently and there shouldn\'t be any issues with that', 1, NULL, NULL, NULL, NULL, '2024-04-15 10:22:52', '2024-04-15 10:22:52'),
(31, 'CF000000031', 'STEPHANIE NOELLE MS TONIZZO', 'N/A', 'Traveller did not pr', 3, 135, 3, '1', 'As per Shakeeb shower screen is broken and guest wants to change the room.... room is unused please change the room it just need some alignment which i can do when the reception is not busy\"', 1, NULL, NULL, NULL, NULL, '2024-04-15 12:45:56', '2024-04-15 12:45:56'),
(32, 'CF000000032', 'STEPHANIE NOELLE MS TONIZZO', 'N/A', 'Traveller did not pr', 3, 135, 3, '1', 'As per Shakeeb #33604: STEPHANIE NOELLE MS TONIZZO for this guest \r\nI found stains on sofa but all the other complains was just in the air i believe because when I checked I didn\'t find any smell in the room but there was some smell in corridor but not in the room and I checked the bathroom bin and it was the wrapper from toilet roll.\r\n\r\nguest said \r\n\r\nbathroom bin was not empty\r\nstains on sofa\r\nand bad smell', 1, NULL, NULL, NULL, NULL, '2024-04-15 13:09:48', '2024-04-15 13:09:48'),
(33, 'CF000000033', 'PRAS GOPAKUMARLEKSHMIKUTTYAMMA', 'N/A', 'Traveller did not pr', 3, 153, 1, '1', 'As per Shakeeb #33606: PRAS GOPAKUMARLEKSHMIKUTTYAMMA guest came to around 5:20pm and said that I am not sure about the bed I feel it uncomfortable to sleep if I sleep on it I might have a sore back.... also mention the stains on sofa and walls. I asked him if would like to change the room he said its fine.... after some time went to his room to check mattress he was not there....', 1, NULL, NULL, NULL, NULL, '2024-04-15 13:12:27', '2024-04-15 13:12:27'),
(34, 'CF000000034', 'Noami Cunningham', 'N/A', NULL, 3, 170, 3, '1', 'Copied message from FO on whatsapp GC:\r\n\r\nGuest came to reception and informed me that she tried to close the balcony door but accidentally the balcony door fell down..\r\n\r\nGuest refused to transfer to another room and asking us not to charge anything to her because its not her fault that the door fell down', 1, NULL, NULL, NULL, NULL, '2024-04-17 02:40:34', '2024-04-17 02:40:34'),
(35, 'CF000000035', 'Billy Kuhnert', 'n/a', NULL, 1, 106, 3, '1', 'as per messgae of FO in WA GC: guest damaged the toilet bowl. \r\nRoom is blocked for tonight as per Daniel instruction', 1, NULL, NULL, NULL, NULL, '2024-04-17 06:17:11', '2024-04-17 06:17:11'),
(36, 'CF000000036', 'Nathan Harrison', 'N/A', '0473160771', 1, 46, 1, '1', 'As per Hemant Link2home guest spoiling the room. Room is full of garbage. Attached photos in the booking ID #18742: Nathan Harrison', 1, NULL, NULL, NULL, NULL, '2024-04-17 07:16:54', '2024-04-17 07:16:54'),
(37, 'CF000000037', 'Matthew Hallows', 'Hallows1@gmail.com', NULL, 2, 21, 12, '1', 'My stay was going well until a staff member opened my door without knocking while I was getting changed', 1, NULL, NULL, NULL, NULL, '2024-04-17 09:49:55', '2024-04-17 09:49:55'),
(38, 'CF000000038', 'Pauline Ferris', 'pferri.801641@guest.booking.com', '+61 490 037 044', 3, 135, 11, '1', 'As per Shakeeb Guest came to the reception around 5:06pm and complain about balcony door was not locking and also there is some smell in the room when I checked the room initially balcony door was not locking but after some twist and turn I was locking again..... but guest doesn\'t want to stay in the same room and when checked with Daniel he said we can change the room. Transferred guest from Room 403 to 507', 1, NULL, NULL, NULL, NULL, '2024-04-17 18:00:54', '2024-04-17 18:00:54'),
(39, 'CF000000039', 'James Duff', 'na95pr6iix@m.expediapartnercentral.com', '61 049 0024597', 2, 42, 15, '3', 'As per Nabin Guest checked out early no any reason mentioned left key and went. FYI The booker of this guest requested for refund as their work ended early. SB approved no refund for the remaining nights. This booking was booked through Expedia.', 1, NULL, NULL, NULL, NULL, '2024-04-18 12:13:19', '2024-04-18 12:13:19'),
(40, 'CF000000040', 'Kristy Ruocco', 'kywscb8yb1@m.expediapartnercentral.com', '61 424 925699', 2, 51, 15, '3', 'As per Nabin Guest checked out early no any reason mentioned left key and went. FYI The booker of this guest requested for refund as their work ended early. SB approved no refund for the remaining nights. This booking was booked through Expedia.', 1, NULL, NULL, NULL, NULL, '2024-04-18 12:15:03', '2024-04-18 12:15:03'),
(41, 'CF000000041', 'Mr & Mrs Frankie Wilkinson', 'frankietpp2@gmail.com', NULL, 2, 25, 15, '3', 'Smoke smell in the room', 1, NULL, NULL, NULL, NULL, '2024-04-19 02:58:07', '2024-04-19 02:58:07'),
(42, 'CF000000042', 'Chayne', 'chayne_pep@hotmail.com', '0415758065', 2, 60, 15, '1', 'General experience was okay. Customer service was poor. There was no lift access for a pram only stairs. The carge tor the room was debited prior to arrival when it was selected \"pay on arrival\" and it was also arranged to pay via a different mode via phone conversation previously. The location of the apartment was good. Very spacious. Booked for 5 only 4 pillows were provided and nil extra bedding/blanket or pillows for the 5th person. The sofa bed mattress was extremely uncomfortable with multiple springs protruding through the mattress. Appliances - toaster was broken, and could not utilise this during our stay. The shower in the ensuit flooded the bathroom floor with the shower door closed. The main bathroom bath tap was not usable. Reception was extremely unhelpful in problem solving and assisting with a misplaced room key which was found and handed in before check out. Charge for a lost or misplaced key was $350.', 1, NULL, NULL, NULL, NULL, '2024-04-20 09:52:29', '2024-04-20 09:52:29'),
(43, 'CF000000043', 'Keith Moloney', 'rs.6vf.9u2laexdv2.1.909a@guest.trip.com', '401652592', 1, 51, 1, '1', 'As per Shakeeb #18847: Keith Moloney guest is complaining about room that it has a small hole in sofa and some mold in bathroom under the silicon layer and guest wants a refund or change the room.... I told them we don\'t have any availability and they use the room. Booked in Ctrip and non refundable booking. No refund as per Ms. Ruby. Guest was asking for refund of his bond and parking.', 1, NULL, NULL, NULL, NULL, '2024-04-20 13:03:12', '2024-04-20 13:03:12'),
(44, 'CF000000044', 'Michael Tutoka', 'yskx5jvm1v@m.expediapartnercentral.com', '0450648872', 3, 202, 3, '1', 'At 10:18 PM As per Shahab 1107  washing machine drain pipe was disconnected in cabinet, due to that all water flooded into both rooms 1107 & 1106. 1107 Guest put cloths for washing and left hotel, he might come back in night. Due for room transfer as we are full tonight April 20, 2024.', 1, NULL, NULL, NULL, NULL, '2024-04-20 17:04:00', '2024-04-20 17:04:00'),
(45, 'CF000000045', 'Jack Lowane', 'marthu.374607@guest.booking.com', 'N/A', 3, 201, 3, '1', 'At  10:18 PM Shahab reported that 1107  washing machine drain pipe was disconnected in cabinet, due to that all water flooded into both rooms 1107 & 1106. Both rooms got full water, unable to walk on carpets, I apologize guests and ask them to manage tonight. Due to transfer tomorrow since we are full house today April 20, 2024', 1, NULL, NULL, NULL, NULL, '2024-04-20 17:06:36', '2024-04-20 17:06:36'),
(46, 'CF000000046', 'Satyavathi devi', 'Mysydneylife11@gmail.com', '0406211920', 2, 18, 4, '1', 'Cook top is not working', 1, NULL, NULL, NULL, NULL, '2024-04-26 13:30:29', '2024-04-26 13:30:29'),
(47, 'CF000000047', 'Jordan Canobie', 'nobesjord@gmail.com', NULL, 1, 107, 16, '3', 'Dented the roof, come thrown on top of car throughout the night', 2, 'Dear Mr. Canobie,\r\n\r\nThank you for your inquiry regarding the CCTV footage.\r\n\r\nAfter a thorough review of the footage, we observed the following:\r\n\r\nYou parked in private parking and not in hotel parking even though it was clearly marked with signage and a plastic parking cone which made the car park owner upset and he put his personal plastic cone on your car roof gently.  In the video it does not appear to have caused any damage, however, this is a matter for you to resolve.\r\n\r\nAttached to this email, you will find the video footage covering the area where your car was parked during the specified time frame.\r\n\r\nHope this assist in your enquiry.  Have an enjoyable weekend.', NULL, NULL, NULL, '2024-04-27 04:27:45', '2024-04-27 08:17:22'),
(48, 'CF000000048', 'Tara Sherry', 'tarasherry18@gmail.com', NULL, 1, 78, 1, '3', 'Hi, \r\n\r\nI am just writing in regard to my recent stay on the 20th April. Booking name Tara Sherry. \r\n\r\nThis is the second time staying at your motel, I had previously stayed once before which I had put in a complaint regarding the room being dirty and being charged for the sofa bed but the sofa bed not being fit to sleep on, and cigarette ash all over the balcony. \r\n\r\nI decided to give your motel a second try so when booking I called and mentioned my previous complaint, in hopes the room will be much nicer and cleaner. \r\n\r\nOnly to find that it was in fact full on bugs and cockroaches, I was lying on the bed and had a cockroach crawl over me. I am absolutely disgusted, upon having one crawl over me I looked around and they were everywhere. \r\n\r\nNot only the cockroaches were the issue, but we actually had no blanket to sleep with as the blanket was covered in yellow urine stains and the spare blanket in the cupboard had black hairs on it when we pulled it out and it looks to be about 50 years old that is not comfortable it looks like something from a second hand shop, once upon a time ago it would have been fluffy and warm. \r\n\r\nSo we slept with sheets. \r\n\r\nAnother issue I had was the room next door had the tv blasting all night which was obviously against our bedroom wall as it was all we could hear. \r\n\r\nI am also shocked at the security deposit procedure. \r\nAny/every motel take credit card details to pay for damages if any occur. Your motel take $200 instantly from our accounts and don’t return it for 5-7 days. \r\n\r\nIf you can take it instantly, you can refund it instantly. \r\n\r\nI am appalled. \r\n\r\nI am requesting a refund of my security deposit by Wednesday and also a refund of my accomodation cost in whole. \r\n\r\nIf this isn’t received by Wednesday at 5pm I will be seeking legal advice and be contacting the NSW Fair Trading, and A Current Affairs, because your motel is filthy, unhygienic and not up to the standards it should be. \r\n\r\nI also have photo evidence which I will attach for your record. \r\n\r\nYou can contact me back via email, I will not be accepting phone calls regarding this matter.', 2, 'Dear Ms. Tara,\r\n\r\nThank you for taking the time to share your experience regarding your recent stay at APX Darling Harbor. We truly appreciate your honesty and taking the time to let us know about your experience.\r\n\r\nWe strive to provide exceptional service and accommodations, and we regret that we did not meet this standard during your visit. Regarding the release of the security bond preauthorization, it has been reversed and was not debited to your account. However; for refund on accommodation it isn’t warranted for this complaint.\r\n\r\nWe understand the importance of a comfortable and enjoyable stay for all our guests, and we are disappointed to learn that we fell short in delivering this to you. Your concerns have been brought to our attention, and we have taken immediate steps to address the issues you mentioned and conducted pest control right after we received your feedback when you checked out. Pest control is being done twice a year, and we apologize that bugs entered your accommodation. \r\n\r\nWe would be grateful for the opportunity to make it up to you and regain your trust. If you would consider giving us another chance, please do not hesitate to contact us directly. We would love to welcome you back and ensure that you have a much more pleasant experience with us.\r\nOnce again, we sincerely apologize for the inconvenience you experienced, and we appreciate your understanding.', NULL, NULL, NULL, '2024-04-27 04:55:32', '2024-04-27 05:24:16'),
(49, 'CF000000049', 'Atik Ullah', 'qtg2btu1v@m.expediapartnercentral.com', '61 040 3959040', 3, 141, 1, '1', 'Guest reviewed in Expedia. #35267: Atik Ullah\r\nReception staff was unprofessional, grumpy not friendly, door card wasn’t working properly but the reception staff keep sent me back for three times up and down. Room was dirty, shower door wasn’t working, sofa was dirty looks like didn’t clean, leftover milk on the fridge, tv remote broken and much more', 1, NULL, NULL, NULL, NULL, '2024-04-27 08:27:52', '2024-04-27 08:27:52'),
(50, 'CF000000050', 'Rena Warmerdam', 'rena.warmerdam@expandwithace.com', NULL, 1, 24, 15, '3', 'the internet is not working\r\nthere is a dog barking in a room nearby', 1, NULL, NULL, NULL, NULL, '2024-05-03 09:57:24', '2024-05-03 09:57:24'),
(51, 'CF000000051', 'Klaus Schneider', 'schneider.kl@t-online.de', NULL, 3, 154, 4, '3', 'copied email from the guest:\r\n\r\nOur room 604 is totally unacceptable noisy. Facing the main street, windows not soundproof, doors clapping from adjacent rooms - what a nightmare.\r\nSleeping impossible.', 1, NULL, NULL, NULL, NULL, '2024-05-04 02:17:42', '2024-05-04 02:17:42'),
(52, 'CF000000052', '#19030: Amber Hewson', 'ahewso.445955@guest.booking.com', '+61 421 462 369', 1, 33, 1, '1', 'Received message in extranet booking.com that there is Shocking room. Fridge was not on and has cockroaches in it. Never again. You better put the deposit back in within 7 days from his previous Room 23. As per Hemant Kareem went to her room and checked the refrigerator is in working condition and no cockroach was found. Now she is asking for a swimming pool and gym. Even detail cleaning is done today in APT #23.\r\nAs per Kareem from the time of checking she is full of attitude. Coz of weather problems with the connectivity of TV. Daniel spoke with guest again and agreed to change room', 1, NULL, NULL, NULL, NULL, '2024-05-07 13:07:45', '2024-05-07 13:07:45'),
(53, 'CF000000053', 'Matthew Nicol', 'NA', NULL, 2, 8, 15, '1', 'I stayed on Wednesday night and checked out yesterday and I left my watch bracelet and my AirPods in the drawer next to the bed\r\nUpon checking with FO - nothing was retrieved.', 1, NULL, NULL, NULL, NULL, '2024-05-10 06:09:47', '2024-05-10 06:09:47'),
(54, 'CF000000054', 'Ella Farraher', 'N/A', NULL, 3, 163, 15, '1', 'As per message of FO in WA GC: Room 704 complain for a lot of bugs ? ? ? in the room', 1, NULL, NULL, NULL, NULL, '2024-05-10 07:12:06', '2024-05-10 07:12:06'),
(55, 'CF000000055', 'Steven Linhart', 'na', NULL, 3, 150, 15, '1', 'Was not checked in in NB and was put on no show.', 1, NULL, NULL, NULL, NULL, '2024-05-11 05:11:18', '2024-05-11 05:11:18'),
(56, 'CF000000056', 'Louise Pedersen', 'npeder.305992@guest.booking.com', 'N/A', 3, 140, 11, '1', 'As per Faheem #35787 louise pedersen guest wants to cancel the booking she says the room standard is not like advertised and complaints that bed is not comfortable. She says on description it says private pool whereas its a common pool for all guests and also she says it not indoor. Approved by SB refunded the guest.', 1, NULL, NULL, NULL, NULL, '2024-05-11 10:45:39', '2024-05-11 10:45:39'),
(57, 'CF000000057', 'Kim', 'William@hotmail.com', '0459403580', 2, 48, 2, '1', 'Love it', 1, NULL, NULL, NULL, NULL, '2024-05-14 02:18:46', '2024-05-14 02:18:46'),
(58, 'CF000000058', 'HyeonJung Ha', 'hha.617467@guest.booking.com', '0490344039', 3, 163, 1, '1', 'As per Faye guest complained presence of cockroaches in the room. Initially Vinko went to the room to have it sprayed which guests agreed. When the housekeeping went to the room they do not want to have it sprayed and wanted to change room. SB approved to change room. Guest was transferred from 704 to 1006', 1, NULL, NULL, NULL, NULL, '2024-05-20 05:56:47', '2024-05-20 05:56:47'),
(59, 'CF000000059', 'Kylie Hannah Hepburn', 'kylesha2009@hotmail.com', '0424631607', 2, 31, 2, '1', 'How do u work the oven', 1, NULL, NULL, NULL, NULL, '2024-05-22 14:22:34', '2024-05-22 14:22:34'),
(60, 'CF000000060', 'Eva Suhami Brighina', 'esuham.528595@guest.booking.com', '+687 79 79 21', 3, 158, 2, '1', 'This guest was move from apt 508 Accessible room to EFS 608 due to aircon by Daniel. Informed that this guest can\'t stay for 3 nights in EFS 608 due to there is a confirmed booking on May 25,2024.As per Daniel he will transfer the guest tomorrow to Accessible 408 until the departure date on May 25,024', 1, NULL, NULL, NULL, NULL, '2024-05-23 13:57:04', '2024-05-23 13:57:04'),
(61, 'CF000000061', 'Alvin Chen', 'te9n88k5dn@m.expediapartnercentral.com', '041 6972584', 1, 106, 2, '1', 'As per Shakeeb #19537: Alvin Chen guest is complaining about aircon working on cold only and unable to configure the universal remote. Guest was complaining about Aircon not working on heating mode and when checked with Daniel he said aircon is in replacement. Shakeeb kept a room heater in the room and turned it on', 1, NULL, NULL, NULL, NULL, '2024-05-25 17:02:41', '2024-05-25 17:02:41'),
(62, 'CF000000062', 'GEORGE MR CHINGWANGWE', 'NA', NULL, 1, 25, 15, '1', 'as per fo message on wa gc, rm 25 has bad smell. guest was transferred to apt 34', 1, NULL, NULL, NULL, NULL, '2024-05-29 09:11:17', '2024-05-29 09:11:17'),
(63, 'CF000000063', 'Jack', 'jackomerrick037@gmail.com', '0491179430', 2, 22, 5, '1', '?', 1, NULL, NULL, NULL, NULL, '2024-05-30 16:47:03', '2024-05-30 16:47:03'),
(64, 'CF000000064', 'Alex Cowden', 'N/A', NULL, 3, 151, 1, '1', 'as per message of Faye in WA: guest complained about cockroach and urine smell in the room. requesting to change room', 1, NULL, NULL, NULL, NULL, '2024-06-03 04:20:30', '2024-06-03 04:20:30'),
(65, 'CF000000065', 'Monika Lynne Hudson', 'N/A', NULL, 3, 149, 3, '1', '(Kai) as per message of guest through WA GC, guest complained about water leakage from the washing machine | as per daniel instruction guest needs to be moved to 408 as he will try to fix the machine', 1, NULL, NULL, NULL, NULL, '2024-06-05 06:05:27', '2024-06-05 06:05:27'),
(66, 'CF000000066', 'Kyaw San', 'N/A', NULL, 1, 111, 3, '1', '(Kai) as per message of hkd in wa gc: one Aircon is not working our Handyman fail to resolve the problem. Guest wanted to change their room', 1, NULL, NULL, NULL, NULL, '2024-06-07 05:39:43', '2024-06-07 05:39:43'),
(67, 'CF000000067', 'Kennedy', 'gokenno@yahoo.co,', '0418658030', 2, 7, 5, '1', 'Hello', 1, NULL, NULL, NULL, NULL, '2024-06-07 08:43:54', '2024-06-07 08:43:54'),
(68, 'CF000000068', 'Luke  Hawkins', 'ss-greyfox@hotmail.com', '0450651665', 2, 62, 5, '1', 'Very comfortable', 1, NULL, NULL, NULL, NULL, '2024-06-07 17:28:15', '2024-06-07 17:28:15'),
(69, 'CF000000069', 'KWOKYAN YAU', 'N/A', NULL, 3, 163, 15, '1', '(Kai) as per message of fo in WA GC, guest complained about cockroach in the room. we offered to transfer to another room but as per fo guest refused to transfer and left', 1, NULL, NULL, NULL, NULL, '2024-06-08 05:47:23', '2024-06-08 05:47:23'),
(70, 'CF000000070', 'Taryn Dean', 'tdean.833405@guest.booking.com', '0434 660 933', 1, 105, 4, '1', 'As per Kareem in WhatsApp. This guest checkout early - as per her there was too much sounds from renovation apts. on level 5 and she cannot stay like this. I told her we will shift you to another Apt. she says she made arrangements at her friends place and she want to checkout.', 1, NULL, NULL, NULL, NULL, '2024-06-18 03:48:30', '2024-06-18 03:48:30'),
(71, 'CF000000071', '19894: Warren Thompson - Split', 'f23ho1wfs2@m.expediapartnercentral.com', '0427289065', 1, 104, 11, '1', 'As per Faheem room 57 also complaining about the smell due to on going renovation in 5th floor. He was moved to Room 33. Approved by SB', 1, NULL, NULL, NULL, NULL, '2024-06-24 15:24:26', '2024-06-24 15:24:26'),
(72, 'CF000000072', '19827: Sydney Findlay', 'j0awmtvm6x@m.expediapartnercentral.com', '0413227119', 1, 105, 11, '1', 'As per Faheem room 58 complaining about the smell due to on going renovation in 5th floor. He was moved to Room 32. Approved by SB', 1, NULL, NULL, NULL, NULL, '2024-06-24 15:27:25', '2024-06-24 15:27:25'),
(73, 'CF000000073', 'Fabrizio Coppete', 'N/A', NULL, 3, 197, 4, '1', '(kai) as per faye message on WA gc, guest complained about the noise in the room.\r\nguest moved to 1009', 1, NULL, NULL, NULL, NULL, '2024-06-26 03:19:54', '2024-06-26 03:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `complain_categories`
--

CREATE TABLE `complain_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `complain_categories`
--

INSERT INTO `complain_categories` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Cleanliness', 1, NULL, NULL),
(2, 'Appliance Malfunctions', 1, NULL, NULL),
(3, 'Utilities', 1, NULL, NULL),
(4, 'Noise', 1, NULL, NULL),
(5, 'Comfort', 1, NULL, NULL),
(6, 'Communication', 1, NULL, NULL),
(7, 'Bond or Security Deposit', 1, NULL, NULL),
(8, 'Accessibility', 1, NULL, NULL),
(9, 'Location', 1, NULL, NULL),
(10, 'Internet/Wi-Fi', 1, NULL, NULL),
(11, 'Amenities', 1, NULL, NULL),
(12, 'Safety and Security', 1, NULL, NULL),
(13, 'Staff Interaction', 1, NULL, NULL),
(14, 'Value for Money', 1, NULL, NULL),
(15, 'General Experience', 1, NULL, NULL),
(16, 'Parking Facilities', 1, NULL, NULL),
(17, 'Parking Cost', 1, NULL, NULL),
(18, 'Security of Parking Area', 1, NULL, NULL),
(19, 'Booking and Reservation for Parking', 1, NULL, NULL),
(20, 'Proximity to Accommodation', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complain_feedback`
--

CREATE TABLE `complain_feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `complain_id` bigint(20) NOT NULL,
  `feedback` text NOT NULL,
  `rating` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complain_replies`
--

CREATE TABLE `complain_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `complain_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `complain_reply` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('67GeSr6Hlppsvnrloi4bNnP7wt9Ccnwemcx2I7T2', NULL, '106.75.9.58', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidms0OGpBYUNYcG9uYzUxazFwMGNxVDl1VDJuemw0YVU2WUZJM1A1SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xMzQuMjA5LjE1MC43MTo5MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740652665),
('B9iogmtGw8ChJLLOUeEuZAJXdJVZL142ebU1jV3W', NULL, '185.247.137.177', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlBjU3l0NkZ6RFRjNGJCTlUzcWtJYzVTSWlyMVVxVGtxeXdYSXl5RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xMzQuMjA5LjE1MC43MTo5MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740516985),
('clzxcA0YxG0ZQ8V94uvnskhgjDjILVzJNv3Z71Mn', NULL, '54.157.112.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnlGcWdCSzF4QjVZbHJudUg3YWpXWUR0Zzh1SDdYYzYydWFURVBrRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xMzQuMjA5LjE1MC43MTo5MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740762466),
('Erx6bBuUnm2q32g8siGDUJDUJmZZwV9xscIlFde4', NULL, '196.127.33.236', 'Mozilla/5.0 (Linux; U; Android 4.4.2; en-US; HM NOTE 1W Build/KOT49H) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/11.0.5.850 U3/0.8.0 Mobile Safari/534.30', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEJTVURTSWl1WE9SVUI3WTBmbURjSW1rRVpGSTlqQ20zTVhwN1VKNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xMzQuMjA5LjE1MC43MTo5MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740646105),
('EYevrxWndiJNhpjsN1oXp30M0i9HAnIpBpG6u7Is', NULL, '106.75.143.26', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkZJV2RYRW9jNHRzSG05U05GcFZhR3luNzdCNThqRlp1RVhJQnEyayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xMzQuMjA5LjE1MC43MTo5MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740653518),
('kenudaEr2CH7IqfHgMeKXQt3nXeeF8NUw78e0a5e', NULL, '106.75.143.26', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUxxazg4dkVQZ0ZWRjdGMUt6eHBtcnViV3BHU1drMEtlWUpNeXFtTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xMzQuMjA5LjE1MC43MTo5MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740653533),
('p0cMgcIdjahoes9rTVmytSiGhIzMZfMAV5TSD7lt', NULL, '87.236.176.251', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYTVpUGFJSkNKU01NTk96aGVpRnpZeE5DeUltdFVzc2Fvdjc3aTQ1bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xMzQuMjA5LjE1MC43MTo5MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740770552),
('Se5N94KaV4y4E9ZYy6TD94SRBz5GLKo8tlP6V1aG', NULL, '206.168.34.119', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHI4RXluaEdEWHhIQ1hwdDRkczNBVm5xc1g5bnVBVWlyYXFqdkNjSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xMzQuMjA5LjE1MC43MTo5MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740713191),
('V2TxNdhf1qoKA65bs9txjSY6VfRDxLxkgiA26F5k', NULL, '167.94.138.46', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia20xMlZ3bEw4cWJlZEVIVzhzYUZMNlh4Zk05Yzl3RVJFWnhORjlvQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xMzQuMjA5LjE1MC43MTo5MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740419446),
('VEc9dniAAwFWenopPesaG6NXRGHDWXxS3A8GtoiW', NULL, '185.242.226.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWp0RnFHN0o2RkhMOHJDS01HekJZQ0tmS0VoeUZ4S1A5bnFZRDNDTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xMzQuMjA5LjE1MC43MTo5MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740509174),
('vRzSeYW1DpOi56GOiahCnDxUeFIxeCo0ZmLbZOJo', NULL, '162.142.125.205', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiajJyU3N5QUY3NlFpRVdDWHZIdzl1RnJBYXFrcFJUZXBjalcwZXNGVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xMzQuMjA5LjE1MC43MTo5MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740563731),
('weD9n9k5FU6z0k9ge38WwRvDoyfIxPmT4bBBlQxM', NULL, '2a06:4882:3000::2d', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUtNVjd4Q1lHZ3dyR1Z6VlRCTm5paXhaMUJ4SUMzQzVoQ3l6RzJ0cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly9bMjQwMDo2MTgwOjEwMDpkMDo6OWQ1OjMwMDFdOjkxIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1740571284),
('YEtV8YuOQFgw9wfTFqAFenx61njogI78PD1a072s', NULL, '206.168.34.52', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGhGYXRjcG13dDhLdG1iSnpuQUNaUWk3ZmoyV3dmdk9PeWdhOVhoTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xMzQuMjA5LjE1MC43MTo5MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740419751);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complain_category`
--

CREATE TABLE `tbl_complain_category` (
  `id` bigint(20) NOT NULL,
  `complaint_date` datetime NOT NULL,
  `hotel_name` varchar(200) NOT NULL,
  `complaint_id` varchar(100) NOT NULL,
  `complaint_category` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_complain_category`
--

INSERT INTO `tbl_complain_category` (`id`, `complaint_date`, `hotel_name`, `complaint_id`, `complaint_category`, `created_at`, `updated_at`) VALUES
(1, '2024-02-12 00:31:04', 'APX Parramatta', 'CF000000002', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(2, '2024-02-12 00:31:04', 'APX Parramatta', 'CF000000002', 'Staff Interaction', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(3, '2024-02-13 22:39:15', 'APX Parramatta', 'CF000000004', 'Appliance Malfunctions', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(4, '2024-02-13 22:39:15', 'APX Parramatta', 'CF000000004', 'Staff Interaction', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(5, '2024-02-17 05:53:49', 'APX Parramatta', 'CF000000005', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(6, '2024-02-17 05:53:49', 'APX Parramatta', 'CF000000005', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(7, '2024-02-19 20:58:20', 'APX Parramatta', 'CF000000006', 'Uncategorized', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(8, '2024-03-03 03:55:04', 'APX Parramatta', 'CF000000017', 'Uncategorized', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(9, '2024-03-17 03:51:51', 'APX Parramatta', 'CF000000018', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(10, '2024-03-17 03:51:51', 'APX Parramatta', 'CF000000018', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(11, '2024-03-20 07:07:19', 'APX Parramatta', 'CF000000019', 'Uncategorized', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(12, '2024-03-23 04:45:48', 'APX Parramatta', 'CF000000020', 'General Experience', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(13, '2024-03-23 04:45:48', 'APX Parramatta', 'CF000000020', 'Value for Money', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(14, '2024-03-24 21:00:55', 'APX Parramatta', 'CF000000021', 'Uncategorized', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(15, '2024-04-10 05:40:39', 'APX Parramatta', 'CF000000022', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(16, '2024-04-11 19:14:56', 'APX Parramatta', 'CF000000023', 'Utilities', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(17, '2024-04-11 19:14:56', 'APX Parramatta', 'CF000000023', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(18, '2024-04-12 01:15:34', 'APX Darling Harbour', 'CF000000024', 'Appliance Malfunctions', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(19, '2024-04-12 01:15:34', 'APX Darling Harbour', 'CF000000024', 'Communication', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(20, '2024-04-12 19:09:50', 'APX Parramatta', 'CF000000025', 'Internet/Wi-Fi', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(21, '2024-04-12 19:09:50', 'APX Parramatta', 'CF000000025', 'Utilities', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(22, '2024-04-12 19:10:33', 'APX Parramatta', 'CF000000026', 'Internet/Wi-Fi', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(23, '2024-04-12 19:10:33', 'APX Parramatta', 'CF000000026', 'Staff Interaction', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(24, '2024-04-13 01:12:00', 'APX World Square', 'CF000000027', 'Appliance Malfunctions', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(25, '2024-04-13 01:12:00', 'APX World Square', 'CF000000027', 'Utilities', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(26, '2024-04-13 01:12:00', 'APX World Square', 'CF000000028', 'Appliance Malfunctions', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(27, '2024-04-13 01:12:00', 'APX World Square', 'CF000000028', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(28, '2024-04-15 22:08:03', 'APX Darling Harbour', 'CF000000029', 'Noise', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(29, '2024-04-15 22:08:03', 'APX Darling Harbour', 'CF000000029', 'Staff Interaction', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(30, '2024-04-16 02:22:52', 'APX World Square', 'CF000000030', 'Noise', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(31, '2024-04-16 02:22:52', 'APX World Square', 'CF000000030', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(32, '2024-04-16 04:45:56', 'APX World Square', 'CF000000031', 'Appliance Malfunctions', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(33, '2024-04-16 04:45:56', 'APX World Square', 'CF000000031', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(34, '2024-04-16 05:09:48', 'APX World Square', 'CF000000032', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(35, '2024-04-16 05:09:48', 'APX World Square', 'CF000000032', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(36, '2024-04-16 05:12:27', 'APX World Square', 'CF000000033', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(37, '2024-04-16 05:12:27', 'APX World Square', 'CF000000033', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(38, '2024-04-17 18:40:34', 'APX World Square', 'CF000000034', 'Appliance Malfunctions', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(39, '2024-04-17 18:40:34', 'APX World Square', 'CF000000034', 'Staff Interaction', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(40, '2024-04-17 22:17:11', 'APX Darling Harbour', 'CF000000035', 'Appliance Malfunctions', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(41, '2024-04-17 22:17:11', 'APX Darling Harbour', 'CF000000035', 'Communication', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(42, '2024-04-17 23:16:54', 'APX Darling Harbour', 'CF000000036', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(43, '2024-04-17 23:16:54', 'APX Darling Harbour', 'CF000000036', 'General Experience', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(44, '2024-04-18 01:49:55', 'APX Parramatta', 'CF000000037', 'Staff Interaction', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(45, '2024-04-18 01:49:55', 'APX Parramatta', 'CF000000037', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(46, '2024-04-18 10:00:54', 'APX World Square', 'CF000000038', 'Appliance Malfunctions', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(47, '2024-04-18 10:00:54', 'APX World Square', 'CF000000038', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(48, '2024-04-19 04:13:19', 'APX Parramatta', 'CF000000039', 'Communication', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(49, '2024-04-19 04:13:19', 'APX Parramatta', 'CF000000039', 'Staff Interaction', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(50, '2024-04-19 04:15:03', 'APX Parramatta', 'CF000000040', 'Staff Interaction', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(51, '2024-04-19 04:15:03', 'APX Parramatta', 'CF000000040', 'Value for Money', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(52, '2024-04-19 18:58:07', 'APX Parramatta', 'CF000000041', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(53, '2024-04-19 18:58:07', 'APX Parramatta', 'CF000000041', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(54, '2024-04-21 01:52:29', 'APX Parramatta', 'CF000000042', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(55, '2024-04-21 01:52:29', 'APX Parramatta', 'CF000000042', 'Appliance Malfunctions', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(56, '2024-04-21 05:03:12', 'APX Darling Harbour', 'CF000000043', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(57, '2024-04-21 05:03:12', 'APX Darling Harbour', 'CF000000043', 'Appliance Malfunctions', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(58, '2024-04-21 09:04:00', 'APX World Square', 'CF000000044', 'Appliance Malfunctions', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(59, '2024-04-21 09:04:00', 'APX World Square', 'CF000000044', 'Utilities', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(60, '2024-04-21 09:06:36', 'APX World Square', 'CF000000045', 'Utilities', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(61, '2024-04-21 09:06:36', 'APX World Square', 'CF000000045', 'Appliance Malfunctions', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(62, '2024-04-27 05:30:29', 'APX Parramatta', 'CF000000046', 'Appliance Malfunctions', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(63, '2024-04-27 05:30:29', 'APX Parramatta', 'CF000000046', 'Utilities', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(64, '2024-04-27 20:27:45', 'APX Darling Harbour', 'CF000000047', 'Safety and Security', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(65, '2024-04-27 20:27:45', 'APX Darling Harbour', 'CF000000047', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(66, '2024-04-27 20:55:32', 'APX Darling Harbour', 'CF000000048', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(67, '2024-04-27 20:55:32', 'APX Darling Harbour', 'CF000000048', 'Bond or Security Deposit', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(68, '2024-04-28 00:27:52', 'APX World Square', 'CF000000049', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(69, '2024-04-28 00:27:52', 'APX World Square', 'CF000000049', 'Appliance Malfunctions', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(70, '2024-05-04 01:57:24', 'APX Darling Harbour', 'CF000000050', 'Utilities', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(71, '2024-05-04 01:57:24', 'APX Darling Harbour', 'CF000000050', 'Noise', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(72, '2024-05-04 18:17:42', 'APX World Square', 'CF000000051', 'Noise', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(73, '2024-05-04 18:17:42', 'APX World Square', 'CF000000051', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(74, '2024-05-08 05:07:45', 'APX Darling Harbour', 'CF000000052', 'Appliance Malfunctions', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(75, '2024-05-08 05:07:45', 'APX Darling Harbour', 'CF000000052', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(76, '2024-05-10 22:09:47', 'APX Parramatta', 'CF000000053', 'General Experience', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(77, '2024-05-10 22:09:47', 'APX Parramatta', 'CF000000053', 'Staff Interaction', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(78, '2024-05-10 23:12:06', 'APX World Square', 'CF000000054', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(79, '2024-05-10 23:12:06', 'APX World Square', 'CF000000054', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(80, '2024-05-11 21:11:18', 'APX World Square', 'CF000000055', 'Staff Interaction', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(81, '2024-05-12 02:45:39', 'APX World Square', 'CF000000056', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(82, '2024-05-12 02:45:39', 'APX World Square', 'CF000000056', 'Amenities', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(83, '2024-05-14 18:18:46', 'APX Parramatta', 'CF000000057', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(84, '2024-05-20 21:56:47', 'APX World Square', 'CF000000058', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(85, '2024-05-20 21:56:47', 'APX World Square', 'CF000000058', 'Staff Interaction', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(86, '2024-05-23 06:22:34', 'APX Parramatta', 'CF000000059', 'Utilities', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(87, '2024-05-24 05:57:04', 'APX World Square', 'CF000000060', 'Communication', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(88, '2024-05-24 05:57:04', 'APX World Square', 'CF000000060', 'Accessibility', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(89, '2024-05-26 09:02:41', 'APX Darling Harbour', 'CF000000061', 'Appliance Malfunctions', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(90, '2024-05-26 09:02:41', 'APX Darling Harbour', 'CF000000061', 'Utilities', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(91, '2024-05-30 01:11:17', 'APX Darling Harbour', 'CF000000062', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(92, '2024-05-30 01:11:17', 'APX Darling Harbour', 'CF000000062', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(93, '2024-05-31 08:47:03', 'APX Parramatta', 'CF000000063', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(94, '2024-05-31 08:47:03', 'APX Parramatta', 'CF000000063', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(95, '2024-06-03 20:20:30', 'APX World Square', 'CF000000064', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(96, '2024-06-03 20:20:30', 'APX World Square', 'CF000000064', 'Utilities', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(97, '2024-06-05 22:05:27', 'APX World Square', 'CF000000065', 'Utilities', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(98, '2024-06-05 22:05:27', 'APX World Square', 'CF000000065', 'Appliance Malfunctions', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(99, '2024-06-07 21:39:43', 'APX Darling Harbour', 'CF000000066', 'Appliance Malfunctions', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(100, '2024-06-07 21:39:43', 'APX Darling Harbour', 'CF000000066', 'Staff Interaction', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(101, '2024-06-08 00:43:54', 'APX Parramatta', 'CF000000067', 'Uncategorized', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(102, '2024-06-08 09:28:15', 'APX Parramatta', 'CF000000068', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(103, '2024-06-08 21:47:23', 'APX World Square', 'CF000000069', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(104, '2024-06-08 21:47:23', 'APX World Square', 'CF000000069', 'Safety and Security', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(105, '2024-06-18 19:48:30', 'APX Darling Harbour', 'CF000000070', 'Noise', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(106, '2024-06-18 19:48:30', 'APX Darling Harbour', 'CF000000070', 'Communication', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(107, '2024-06-25 07:24:26', 'APX Darling Harbour', 'CF000000071', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(108, '2024-06-25 07:24:26', 'APX Darling Harbour', 'CF000000071', 'Noise', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(109, '2024-06-25 07:27:25', 'APX Darling Harbour', 'CF000000072', 'Noise', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(110, '2024-06-25 07:27:25', 'APX Darling Harbour', 'CF000000072', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(111, '2024-06-26 19:19:54', 'APX World Square', 'CF000000073', 'Noise', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(112, '2024-06-26 19:19:54', 'APX World Square', 'CF000000073', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(113, '2024-07-07 15:59:26', 'APX Parramatta', 'CF000000074', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(114, '2024-07-07 15:59:26', 'APX Parramatta', 'CF000000074', 'Safety and Security', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(115, '2024-07-26 21:40:07', 'APX Darling Harbour', 'CF000000075', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(116, '2024-07-26 21:40:07', 'APX Darling Harbour', 'CF000000075', 'Staff Interaction', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(117, '2024-07-31 04:28:51', 'APX World Square', 'CF000000076', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(118, '2024-07-31 04:28:51', 'APX World Square', 'CF000000076', 'Staff Interaction', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(119, '2024-07-31 04:34:44', 'APX Darling Harbour', 'CF000000077', 'Internet/Wi-Fi', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(120, '2024-07-31 04:34:44', 'APX Darling Harbour', 'CF000000077', 'Staff Interaction', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(121, '2024-08-15 01:16:13', 'APX Parramatta', 'CF000000078', 'Internet/Wi-Fi', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(122, '2024-08-15 01:16:13', 'APX Parramatta', 'CF000000078', 'Utilities', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(123, '2024-09-02 17:42:05', 'APX Darling Harbour', 'CF000000079', 'Staff Interaction', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(124, '2024-09-02 17:42:05', 'APX Darling Harbour', 'CF000000079', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(125, '2024-09-03 11:17:15', 'APX World Square', 'CF000000080', 'Appliance Malfunctions', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(126, '2024-09-03 11:17:15', 'APX World Square', 'CF000000080', 'Staff Interaction', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(127, '2024-09-21 16:35:56', 'APX Parramatta', 'CF000000081', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(128, '2024-09-21 16:35:56', 'APX Parramatta', 'CF000000081', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(129, '2024-09-22 12:54:57', 'APX Parramatta', 'CF000000082', 'Cleanliness', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(130, '2024-09-22 12:54:57', 'APX Parramatta', 'CF000000082', 'Staff Interaction', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(131, '2024-10-06 10:37:28', 'APX Parramatta', 'CF000000083', 'Comfort', '2024-10-19 02:46:03', '2024-10-19 02:46:03'),
(132, '2024-02-12 00:31:04', 'APX Parramatta', 'CF000000002', 'General Experience', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(133, '2024-02-13 22:39:15', 'APX Parramatta', 'CF000000004', 'Noise', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(134, '2024-02-17 05:53:49', 'APX Parramatta', 'CF000000005', 'Staff Interaction', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(135, '2024-02-19 20:58:20', 'APX Parramatta', 'CF000000006', 'General Experience', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(136, '2024-03-17 03:51:51', 'APX Parramatta', 'CF000000018', 'Staff Interaction', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(137, '2024-03-20 07:07:19', 'APX Parramatta', 'CF000000019', 'Cleanliness', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(138, '2024-03-20 07:07:19', 'APX Parramatta', 'CF000000019', 'Safety and Security', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(139, '2024-03-23 04:45:48', 'APX Parramatta', 'CF000000020', 'Uncategorized', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(140, '2024-04-11 19:14:56', 'APX Parramatta', 'CF000000023', 'Uncategorized', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(141, '2024-04-12 19:09:50', 'APX Parramatta', 'CF000000025', 'Staff Interaction', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(142, '2024-04-12 19:10:33', 'APX Parramatta', 'CF000000026', 'Communication', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(143, '2024-04-13 01:12:00', 'APX World Square', 'CF000000028', 'Utilities', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(144, '2024-04-16 04:45:56', 'APX World Square', 'CF000000031', 'Staff Interaction', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(145, '2024-04-17 22:17:11', 'APX Darling Harbour', 'CF000000035', 'Cleanliness', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(146, '2024-04-17 23:16:54', 'APX Darling Harbour', 'CF000000036', 'Amenities', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(147, '2024-04-18 01:49:55', 'APX Parramatta', 'CF000000037', 'Safety and Security', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(148, '2024-04-19 04:13:19', 'APX Parramatta', 'CF000000039', 'Value for Money', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(149, '2024-04-21 01:52:29', 'APX Parramatta', 'CF000000042', 'Staff Interaction', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(150, '2024-04-21 05:03:12', 'APX Darling Harbour', 'CF000000043', 'Comfort', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(151, '2024-04-27 20:27:45', 'APX Darling Harbour', 'CF000000047', 'Noise', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(152, '2024-04-28 00:27:52', 'APX World Square', 'CF000000049', 'Staff Interaction', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(153, '2024-05-11 21:11:18', 'APX World Square', 'CF000000055', 'General Experience', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(154, '2024-05-14 18:18:46', 'APX Parramatta', 'CF000000057', 'General Experience', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(155, '2024-05-30 01:11:17', 'APX Darling Harbour', 'CF000000062', 'Staff Interaction', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(156, '2024-05-31 08:47:03', 'APX Parramatta', 'CF000000063', 'Uncategorized', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(157, '2024-06-03 20:20:30', 'APX World Square', 'CF000000064', 'Comfort', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(158, '2024-06-07 21:39:43', 'APX Darling Harbour', 'CF000000066', 'Comfort', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(159, '2024-06-08 21:47:23', 'APX World Square', 'CF000000069', 'Staff Interaction', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(160, '2024-06-18 19:48:30', 'APX Darling Harbour', 'CF000000070', 'Staff Interaction', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(161, '2024-07-07 15:59:26', 'APX Parramatta', 'CF000000074', 'General Experience', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(162, '2024-07-31 04:34:44', 'APX Darling Harbour', 'CF000000077', 'Utilities', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(163, '2024-09-02 17:42:05', 'APX Darling Harbour', 'CF000000079', 'Appliance Malfunctions', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(164, '2024-09-21 16:35:56', 'APX Parramatta', 'CF000000081', 'General Experience', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(165, '2024-09-21 16:35:56', 'APX Parramatta', 'CF000000081', 'Value for Money', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(166, '2024-09-22 12:54:57', 'APX Parramatta', 'CF000000082', 'Safety and Security', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(167, '2024-10-06 10:37:28', 'APX Parramatta', 'CF000000083', 'Cleanliness', '2024-10-19 14:16:23', '2024-10-19 14:16:23'),
(259, '2024-04-12 01:15:34', 'APX Darling Harbour', 'CF000000024', 'Staff Interaction', '2024-10-20 16:22:35', '2024-10-20 16:22:35'),
(260, '2024-04-13 01:12:00', 'APX World Square', 'CF000000027', 'Staff Interaction', '2024-10-20 16:22:35', '2024-10-20 16:22:35'),
(261, '2024-04-16 02:22:52', 'APX World Square', 'CF000000030', 'Utilities', '2024-10-20 16:22:35', '2024-10-20 16:22:35'),
(262, '2024-04-17 22:17:11', 'APX Darling Harbour', 'CF000000035', 'Comfort', '2024-10-20 16:22:35', '2024-10-20 16:22:35'),
(263, '2024-04-18 10:00:54', 'APX World Square', 'CF000000038', 'Staff Interaction', '2024-10-20 16:22:35', '2024-10-20 16:22:35'),
(264, '2024-04-19 04:15:03', 'APX Parramatta', 'CF000000040', 'Communication', '2024-10-20 16:22:35', '2024-10-20 16:22:35'),
(265, '2024-04-27 20:27:45', 'APX Darling Harbour', 'CF000000047', 'Utilities', '2024-10-20 16:22:35', '2024-10-20 16:22:35'),
(266, '2024-04-27 20:55:32', 'APX Darling Harbour', 'CF000000048', 'Comfort', '2024-10-20 16:22:35', '2024-10-20 16:22:35'),
(267, '2024-05-10 22:09:47', 'APX Parramatta', 'CF000000053', 'Amenities', '2024-10-20 16:22:35', '2024-10-20 16:22:35'),
(268, '2024-05-14 18:18:46', 'APX Parramatta', 'CF000000057', 'Cleanliness', '2024-10-20 16:22:35', '2024-10-20 16:22:35'),
(269, '2024-06-25 07:27:25', 'APX Darling Harbour', 'CF000000072', 'Communication', '2024-10-20 16:22:35', '2024-10-20 16:22:35'),
(270, '2024-09-02 17:42:05', 'APX Darling Harbour', 'CF000000079', 'Utilities', '2024-10-20 16:22:35', '2024-10-20 16:22:35'),
(271, '2024-09-22 12:54:57', 'APX Parramatta', 'CF000000082', 'Value for Money', '2024-10-20 16:22:35', '2024-10-20 16:22:35'),
(389, '2024-02-12 00:31:04', 'APX Parramatta', 'CF000000002', 'Value for Money', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(390, '2024-02-19 20:58:20', 'APX Parramatta', 'CF000000006', 'Cleanliness', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(391, '2024-02-19 20:58:20', 'APX Parramatta', 'CF000000006', 'Comfort', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(392, '2024-03-17 03:51:51', 'APX Parramatta', 'CF000000018', 'Safety and Security', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(393, '2024-03-24 21:00:55', 'APX Parramatta', 'CF000000021', 'General Experience', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(394, '2024-03-24 21:00:55', 'APX Parramatta', 'CF000000021', 'Value for Money', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(395, '2024-04-10 05:40:39', 'APX Parramatta', 'CF000000022', 'General Experience', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(396, '2024-04-12 19:10:33', 'APX Parramatta', 'CF000000026', 'Utilities', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(397, '2024-04-13 01:12:00', 'APX World Square', 'CF000000027', 'Comfort', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(398, '2024-04-15 22:08:03', 'APX Darling Harbour', 'CF000000029', 'Safety and Security', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(399, '2024-04-16 05:09:48', 'APX World Square', 'CF000000032', 'Staff Interaction', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(400, '2024-04-17 22:17:11', 'APX Darling Harbour', 'CF000000035', 'Staff Interaction', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(401, '2024-04-19 18:58:07', 'APX Parramatta', 'CF000000041', 'Amenities', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(402, '2024-04-27 20:27:45', 'APX Darling Harbour', 'CF000000047', 'Appliance Malfunctions', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(403, '2024-04-27 20:55:32', 'APX Darling Harbour', 'CF000000048', 'Safety and Security', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(404, '2024-05-04 01:57:24', 'APX Darling Harbour', 'CF000000050', 'Internet/Wi-Fi', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(405, '2024-05-11 21:11:18', 'APX World Square', 'CF000000055', 'Communication', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(406, '2024-05-12 02:45:39', 'APX World Square', 'CF000000056', 'Uncategorized', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(407, '2024-05-23 06:22:34', 'APX Parramatta', 'CF000000059', 'Amenities', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(408, '2024-05-24 05:57:04', 'APX World Square', 'CF000000060', 'Staff Interaction', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(409, '2024-05-30 01:11:17', 'APX Darling Harbour', 'CF000000062', 'Communication', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(410, '2024-05-31 08:47:03', 'APX Parramatta', 'CF000000063', 'Staff Interaction', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(411, '2024-06-08 00:43:54', 'APX Parramatta', 'CF000000067', 'General Experience', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(412, '2024-06-08 00:43:54', 'APX Parramatta', 'CF000000067', 'Staff Interaction', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(413, '2024-06-26 19:19:54', 'APX World Square', 'CF000000073', 'Staff Interaction', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(414, '2024-09-02 17:42:05', 'APX Darling Harbour', 'CF000000079', 'Cleanliness', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(415, '2024-09-03 11:17:15', 'APX World Square', 'CF000000080', 'Cleanliness', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(416, '2024-09-21 16:35:56', 'APX Parramatta', 'CF000000081', 'Uncategorized', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(417, '2024-10-21 19:05:19', 'APX Parramatta', 'CF000000084', 'Uncategorized', '2024-10-21 16:17:56', '2024-10-21 16:17:56'),
(525, '2024-02-13 22:39:15', 'APX Parramatta', 'CF000000004', 'Utilities', '2024-10-22 16:15:30', '2024-10-22 16:15:30'),
(526, '2024-04-12 19:09:50', 'APX Parramatta', 'CF000000025', 'Communication', '2024-10-22 16:15:30', '2024-10-22 16:15:30'),
(527, '2024-04-16 04:45:56', 'APX World Square', 'CF000000031', 'Utilities', '2024-10-22 16:15:30', '2024-10-22 16:15:30'),
(528, '2024-04-17 23:16:54', 'APX Darling Harbour', 'CF000000036', 'Staff Interaction', '2024-10-22 16:15:30', '2024-10-22 16:15:30'),
(529, '2024-04-21 01:52:29', 'APX Parramatta', 'CF000000042', 'General Experience', '2024-10-22 16:15:30', '2024-10-22 16:15:30'),
(530, '2024-05-23 06:22:34', 'APX Parramatta', 'CF000000059', 'Appliance Malfunctions', '2024-10-22 16:15:30', '2024-10-22 16:15:30'),
(531, '2024-06-25 07:24:26', 'APX Darling Harbour', 'CF000000071', 'Utilities', '2024-10-22 16:15:30', '2024-10-22 16:15:30'),
(532, '2024-06-26 19:19:54', 'APX World Square', 'CF000000073', 'General Experience', '2024-10-22 16:15:30', '2024-10-22 16:15:30'),
(533, '2024-07-07 15:59:26', 'APX Parramatta', 'CF000000074', 'Staff Interaction', '2024-10-22 16:15:30', '2024-10-22 16:15:30'),
(534, '2024-09-02 17:42:05', 'APX Darling Harbour', 'CF000000079', 'Communication', '2024-10-22 16:15:30', '2024-10-22 16:15:30'),
(654, '2024-03-24 21:00:55', 'APX Parramatta', 'CF000000021', 'Comfort', '2024-10-23 16:17:42', '2024-10-23 16:17:42'),
(655, '2024-04-10 05:40:39', 'APX Parramatta', 'CF000000022', 'Comfort', '2024-10-23 16:17:42', '2024-10-23 16:17:42'),
(656, '2024-04-13 01:12:00', 'APX World Square', 'CF000000028', 'Staff Interaction', '2024-10-23 16:17:42', '2024-10-23 16:17:42'),
(657, '2024-04-18 10:00:54', 'APX World Square', 'CF000000038', 'Comfort', '2024-10-23 16:17:42', '2024-10-23 16:17:42'),
(658, '2024-04-19 04:15:03', 'APX Parramatta', 'CF000000040', 'General Experience', '2024-10-23 16:17:42', '2024-10-23 16:17:42'),
(659, '2024-04-21 01:52:29', 'APX Parramatta', 'CF000000042', 'Comfort', '2024-10-23 16:17:42', '2024-10-23 16:17:42'),
(660, '2024-04-27 20:27:45', 'APX Darling Harbour', 'CF000000047', 'General Experience', '2024-10-23 16:17:42', '2024-10-23 16:17:42'),
(661, '2024-05-08 05:07:45', 'APX Darling Harbour', 'CF000000052', 'Staff Interaction', '2024-10-23 16:17:42', '2024-10-23 16:17:42'),
(662, '2024-06-18 19:48:30', 'APX Darling Harbour', 'CF000000070', 'Comfort', '2024-10-23 16:17:42', '2024-10-23 16:17:42'),
(663, '2024-09-02 17:42:05', 'APX Darling Harbour', 'CF000000079', 'Safety and Security', '2024-10-23 16:17:42', '2024-10-23 16:17:42'),
(785, '2024-03-24 21:00:55', 'APX Parramatta', 'CF000000021', 'Staff Interaction', '2024-10-24 16:15:19', '2024-10-24 16:15:19'),
(786, '2024-04-17 23:16:54', 'APX Darling Harbour', 'CF000000036', 'Comfort', '2024-10-24 16:15:19', '2024-10-24 16:15:19'),
(787, '2024-05-11 21:11:18', 'APX World Square', 'CF000000055', 'Uncategorized', '2024-10-24 16:15:19', '2024-10-24 16:15:19'),
(788, '2024-06-07 21:39:43', 'APX Darling Harbour', 'CF000000066', 'Utilities', '2024-10-24 16:15:19', '2024-10-24 16:15:19'),
(916, '2024-03-23 04:45:48', 'APX Parramatta', 'CF000000020', 'Cleanliness', '2024-10-25 16:18:06', '2024-10-25 16:18:06'),
(917, '2024-03-23 04:45:48', 'APX Parramatta', 'CF000000020', 'Comfort', '2024-10-25 16:18:06', '2024-10-25 16:18:06'),
(918, '2024-04-13 01:12:00', 'APX World Square', 'CF000000028', 'Noise', '2024-10-25 16:18:06', '2024-10-25 16:18:06'),
(919, '2024-04-16 04:45:56', 'APX World Square', 'CF000000031', 'Comfort', '2024-10-25 16:18:06', '2024-10-25 16:18:06'),
(920, '2024-04-19 18:58:07', 'APX Parramatta', 'CF000000041', 'Appliance Malfunctions', '2024-10-25 16:18:06', '2024-10-25 16:18:06'),
(921, '2024-05-10 23:12:06', 'APX World Square', 'CF000000054', 'Appliance Malfunctions', '2024-10-25 16:18:06', '2024-10-25 16:18:06'),
(922, '2024-06-03 20:20:30', 'APX World Square', 'CF000000064', 'Safety and Security', '2024-10-25 16:18:06', '2024-10-25 16:18:06'),
(923, '2024-10-21 19:05:19', 'APX Parramatta', 'CF000000084', 'General Experience', '2024-10-25 16:18:06', '2024-10-25 16:18:06'),
(1046, '2024-04-19 18:58:07', 'APX Parramatta', 'CF000000041', 'Utilities', '2024-10-27 16:17:18', '2024-10-27 16:17:18'),
(1047, '2024-04-27 20:55:32', 'APX Darling Harbour', 'CF000000048', 'Staff Interaction', '2024-10-27 16:17:18', '2024-10-27 16:17:18'),
(1048, '2024-05-10 22:09:47', 'APX Parramatta', 'CF000000053', 'Bond or Security Deposit', '2024-10-27 16:17:18', '2024-10-27 16:17:18'),
(1049, '2024-05-24 05:57:04', 'APX World Square', 'CF000000060', 'Utilities', '2024-10-27 16:17:18', '2024-10-27 16:17:18'),
(1050, '2024-05-30 01:11:17', 'APX Darling Harbour', 'CF000000062', 'General Experience', '2024-10-27 16:17:18', '2024-10-27 16:17:18'),
(1051, '2024-06-08 09:28:15', 'APX Parramatta', 'CF000000068', 'Cleanliness', '2024-10-27 16:17:18', '2024-10-27 16:17:18'),
(1052, '2024-07-07 15:59:26', 'APX Parramatta', 'CF000000074', 'Comfort', '2024-10-27 16:17:18', '2024-10-27 16:17:18'),
(1053, '2024-10-21 19:05:19', 'APX Parramatta', 'CF000000084', 'Staff Interaction', '2024-10-27 16:17:18', '2024-10-27 16:17:18'),
(1182, '2024-02-12 00:31:04', 'APX Parramatta', 'CF000000002', 'Uncategorized', '2024-10-28 16:22:44', '2024-10-28 16:22:44'),
(1183, '2024-02-17 05:53:49', 'APX Parramatta', 'CF000000005', 'General Experience', '2024-10-28 16:22:44', '2024-10-28 16:22:44'),
(1184, '2024-05-10 23:12:06', 'APX World Square', 'CF000000054', 'Amenities', '2024-10-28 16:22:44', '2024-10-28 16:22:44'),
(1185, '2024-05-14 18:18:46', 'APX Parramatta', 'CF000000057', 'Value for Money', '2024-10-28 16:22:44', '2024-10-28 16:22:44'),
(1186, '2024-05-26 09:02:41', 'APX Darling Harbour', 'CF000000061', 'Staff Interaction', '2024-10-28 16:22:44', '2024-10-28 16:22:44'),
(1187, '2024-06-08 00:43:54', 'APX Parramatta', 'CF000000067', 'Comfort', '2024-10-28 16:22:44', '2024-10-28 16:22:44'),
(1188, '2024-06-18 19:48:30', 'APX Darling Harbour', 'CF000000070', 'General Experience', '2024-10-28 16:22:44', '2024-10-28 16:22:44'),
(1189, '2024-10-21 19:05:19', 'APX Parramatta', 'CF000000084', 'Cleanliness', '2024-10-28 16:22:44', '2024-10-28 16:22:44'),
(1190, '2024-10-21 19:05:19', 'APX Parramatta', 'CF000000084', 'Comfort', '2024-10-28 16:22:44', '2024-10-28 16:22:44'),
(1316, '2024-04-19 04:13:19', 'APX Parramatta', 'CF000000039', 'General Experience', '2024-10-29 16:10:49', '2024-10-29 16:10:49'),
(1317, '2024-06-08 09:28:15', 'APX Parramatta', 'CF000000068', 'General Experience', '2024-10-29 16:10:49', '2024-10-29 16:10:49'),
(1318, '2024-06-25 07:24:26', 'APX Darling Harbour', 'CF000000071', 'Cleanliness', '2024-10-29 16:10:49', '2024-10-29 16:10:49'),
(1452, '2024-04-16 02:22:52', 'APX World Square', 'CF000000030', 'Staff Interaction', '2024-10-30 16:44:30', '2024-10-30 16:44:30'),
(1453, '2024-06-03 20:20:30', 'APX World Square', 'CF000000064', 'General Experience', '2024-10-30 16:44:30', '2024-10-30 16:44:30'),
(1454, '2024-06-25 07:24:26', 'APX Darling Harbour', 'CF000000071', 'Communication', '2024-10-30 16:44:30', '2024-10-30 16:44:30'),
(1455, '2024-06-25 07:27:25', 'APX Darling Harbour', 'CF000000072', 'Staff Interaction', '2024-10-30 16:44:30', '2024-10-30 16:44:30'),
(1580, '2024-04-21 01:52:29', 'APX Parramatta', 'CF000000042', 'Bond or Security Deposit', '2024-10-31 16:14:03', '2024-10-31 16:14:03'),
(1581, '2024-06-25 07:24:26', 'APX Darling Harbour', 'CF000000071', 'Staff Interaction', '2024-10-31 16:14:03', '2024-10-31 16:14:03'),
(1710, '2024-04-18 01:49:55', 'APX Parramatta', 'CF000000037', 'General Experience', '2024-11-01 16:19:05', '2024-11-01 16:19:05'),
(1711, '2024-04-19 18:58:07', 'APX Parramatta', 'CF000000041', 'General Experience', '2024-11-01 16:19:05', '2024-11-01 16:19:05'),
(1842, '2024-03-20 07:07:19', 'APX Parramatta', 'CF000000019', 'Staff Interaction', '2024-11-02 16:22:17', '2024-11-02 16:22:17'),
(1843, '2024-10-21 19:05:19', 'APX Parramatta', 'CF000000084', 'Value for Money', '2024-11-02 16:22:17', '2024-11-02 16:22:17'),
(1974, '2024-05-31 08:47:03', 'APX Parramatta', 'CF000000063', 'General Experience', '2024-11-03 16:20:35', '2024-11-03 16:20:35'),
(2103, '2024-03-20 07:07:19', 'APX Parramatta', 'CF000000019', 'General Experience', '2024-11-04 16:44:19', '2024-11-04 16:44:19'),
(2104, '2024-04-21 01:52:29', 'APX Parramatta', 'CF000000042', 'Parking Cost', '2024-11-04 16:44:19', '2024-11-04 16:44:19'),
(2105, '2024-04-21 01:52:29', 'APX Parramatta', 'CF000000042', 'Booking and Reservation for Parking', '2024-11-04 16:44:19', '2024-11-04 16:44:19'),
(2238, '2024-03-20 07:07:19', 'APX Parramatta', 'CF000000019', 'Location', '2024-11-05 16:18:17', '2024-11-05 16:18:17'),
(2239, '2024-05-14 18:18:46', 'APX Parramatta', 'CF000000057', 'Uncategorized', '2024-11-05 16:18:17', '2024-11-05 16:18:17'),
(2240, '2024-05-26 09:02:41', 'APX Darling Harbour', 'CF000000061', 'Comfort', '2024-11-05 16:18:17', '2024-11-05 16:18:17'),
(2241, '2024-07-31 04:34:44', 'APX Darling Harbour', 'CF000000077', 'Appliance Malfunctions', '2024-11-05 16:18:17', '2024-11-05 16:18:17'),
(2242, '2024-11-05 19:35:28', 'APX Parramatta', 'CF000000085', 'Cleanliness', '2024-11-05 16:18:17', '2024-11-05 16:18:17'),
(2243, '2024-11-05 19:35:28', 'APX Parramatta', 'CF000000085', 'Comfort', '2024-11-05 16:18:17', '2024-11-05 16:18:17'),
(2373, '2024-05-10 22:09:47', 'APX Parramatta', 'CF000000053', 'Uncategorized', '2024-11-06 16:18:29', '2024-11-06 16:18:29'),
(2506, '2024-04-21 01:52:29', 'APX Parramatta', 'CF000000042', 'Uncategorized', '2024-11-07 16:56:04', '2024-11-07 16:56:04'),
(2641, '2024-04-10 05:40:39', 'APX Parramatta', 'CF000000022', 'Staff Interaction', '2024-11-09 16:15:47', '2024-11-09 16:15:47'),
(2642, '2024-04-21 01:52:29', 'APX Parramatta', 'CF000000042', 'Utilities', '2024-11-09 16:15:47', '2024-11-09 16:15:47'),
(2643, '2024-11-05 19:35:28', 'APX Parramatta', 'CF000000085', 'Uncategorized', '2024-11-09 16:15:47', '2024-11-09 16:15:47'),
(2775, '2024-04-17 18:40:34', 'APX World Square', 'CF000000034', 'Safety and Security', '2024-11-10 16:09:46', '2024-11-10 16:09:46'),
(2776, '2024-04-21 01:52:29', 'APX Parramatta', 'CF000000042', 'Communication', '2024-11-10 16:09:46', '2024-11-10 16:09:46'),
(2777, '2024-05-10 23:12:06', 'APX World Square', 'CF000000054', 'Utilities', '2024-11-10 16:09:46', '2024-11-10 16:09:46'),
(2778, '2024-07-26 21:40:07', 'APX Darling Harbour', 'CF000000075', 'Comfort', '2024-11-10 16:09:46', '2024-11-10 16:09:46'),
(2910, '2024-03-24 21:00:55', 'APX Parramatta', 'CF000000021', 'Cleanliness', '2024-11-11 16:17:48', '2024-11-11 16:17:48'),
(2911, '2024-05-23 06:22:34', 'APX Parramatta', 'CF000000059', 'Uncategorized', '2024-11-11 16:17:48', '2024-11-11 16:17:48'),
(2912, '2024-11-11 09:27:52', 'APX Parramatta', 'CF000000086', 'Uncategorized', '2024-11-11 16:17:48', '2024-11-11 16:17:48'),
(3044, '2024-04-10 05:40:39', 'APX Parramatta', 'CF000000022', 'Amenities', '2024-11-12 16:22:14', '2024-11-12 16:22:14'),
(3045, '2024-04-13 01:12:00', 'APX World Square', 'CF000000027', 'Noise', '2024-11-12 16:22:14', '2024-11-12 16:22:14'),
(3046, '2024-04-27 20:27:45', 'APX Darling Harbour', 'CF000000047', 'Amenities', '2024-11-12 16:22:14', '2024-11-12 16:22:14'),
(3047, '2024-06-25 07:27:25', 'APX Darling Harbour', 'CF000000072', 'Cleanliness', '2024-11-12 16:22:14', '2024-11-12 16:22:14'),
(3048, '2024-11-11 09:27:52', 'APX Parramatta', 'CF000000086', 'General Experience', '2024-11-12 16:22:14', '2024-11-12 16:22:14'),
(3049, '2024-11-11 09:27:52', 'APX Parramatta', 'CF000000086', 'Comfort', '2024-11-12 16:22:14', '2024-11-12 16:22:14'),
(3314, '2024-04-16 05:12:27', 'APX World Square', 'CF000000033', 'Staff Interaction', '2024-11-15 16:29:50', '2024-11-15 16:29:50'),
(3315, '2024-05-31 08:47:03', 'APX Parramatta', 'CF000000063', 'Amenities', '2024-11-15 16:29:50', '2024-11-15 16:29:50'),
(3449, '2024-06-03 20:20:30', 'APX World Square', 'CF000000064', 'Staff Interaction', '2024-11-16 16:22:10', '2024-11-16 16:22:10'),
(3583, '2024-11-11 09:27:52', 'APX Parramatta', 'CF000000086', 'Cleanliness', '2024-11-17 16:19:58', '2024-11-17 16:19:58'),
(3721, '2024-05-10 23:12:06', 'APX World Square', 'CF000000054', 'Staff Interaction', '2024-11-18 16:26:36', '2024-11-18 16:26:36'),
(3722, '2024-11-11 09:27:52', 'APX Parramatta', 'CF000000086', 'Value for Money', '2024-11-18 16:26:36', '2024-11-18 16:26:36'),
(3723, '2024-11-18 21:17:35', 'APX Parramatta', 'CF000000087', 'General Experience', '2024-11-18 16:26:36', '2024-11-18 16:26:36'),
(3858, '2024-03-20 07:07:19', 'APX Parramatta', 'CF000000019', 'Comfort', '2024-11-19 16:22:25', '2024-11-19 16:22:25'),
(3859, '2024-11-18 21:17:35', 'APX Parramatta', 'CF000000087', 'Comfort', '2024-11-19 16:22:25', '2024-11-19 16:22:25'),
(3995, '2024-11-05 19:35:28', 'APX Parramatta', 'CF000000085', 'General Experience', '2024-11-20 16:16:20', '2024-11-20 16:16:20'),
(3996, '2024-11-18 21:17:35', 'APX Parramatta', 'CF000000087', 'Cleanliness', '2024-11-20 16:16:20', '2024-11-20 16:16:20'),
(4133, '2024-02-19 20:58:20', 'APX Parramatta', 'CF000000006', 'Staff Interaction', '2024-11-21 16:21:38', '2024-11-21 16:21:38'),
(4134, '2024-04-21 05:03:12', 'APX Darling Harbour', 'CF000000043', 'Staff Interaction', '2024-11-21 16:21:38', '2024-11-21 16:21:38'),
(4135, '2024-11-21 14:27:24', 'APX Parramatta', 'CF000000088', 'Utilities', '2024-11-21 16:21:38', '2024-11-21 16:21:38'),
(4136, '2024-11-21 14:27:24', 'APX Parramatta', 'CF000000088', 'Internet/Wi-Fi', '2024-11-21 16:21:38', '2024-11-21 16:21:38'),
(4268, '2024-04-10 05:40:39', 'APX Parramatta', 'CF000000022', 'Uncategorized', '2024-11-22 16:22:34', '2024-11-22 16:22:34'),
(4269, '2024-04-17 23:16:54', 'APX Darling Harbour', 'CF000000036', 'Safety and Security', '2024-11-22 16:22:34', '2024-11-22 16:22:34'),
(4270, '2024-08-15 01:16:13', 'APX Parramatta', 'CF000000078', 'Amenities', '2024-11-22 16:22:34', '2024-11-22 16:22:34'),
(4271, '2024-11-18 21:17:35', 'APX Parramatta', 'CF000000087', 'Uncategorized', '2024-11-22 16:22:34', '2024-11-22 16:22:34'),
(4407, '2024-11-18 21:17:35', 'APX Parramatta', 'CF000000087', 'Value for Money', '2024-11-24 16:26:08', '2024-11-24 16:26:08'),
(4408, '2024-11-24 08:44:04', 'APX Parramatta', 'CF000000089', 'Staff Interaction', '2024-11-24 16:26:08', '2024-11-24 16:26:08'),
(4409, '2024-11-24 08:44:04', 'APX Parramatta', 'CF000000089', 'Value for Money', '2024-11-24 16:26:08', '2024-11-24 16:26:08'),
(4832, '2024-03-20 07:07:19', 'APX Parramatta', 'CF000000019', 'Amenities', '2024-11-27 16:31:57', '2024-11-27 16:31:57'),
(4833, '2024-11-21 14:27:24', 'APX Parramatta', 'CF000000088', 'Appliance Malfunctions', '2024-11-27 16:31:57', '2024-11-27 16:31:57'),
(4976, '2024-02-19 20:58:20', 'APX Parramatta', 'CF000000006', 'Amenities', '2024-11-28 16:27:52', '2024-11-28 16:27:52'),
(4977, '2024-11-24 08:44:04', 'APX Parramatta', 'CF000000089', 'Comfort', '2024-11-28 16:27:52', '2024-11-28 16:27:52'),
(5120, '2024-05-31 08:47:03', 'APX Parramatta', 'CF000000063', 'Location', '2024-11-29 16:34:01', '2024-11-29 16:34:01'),
(5401, '2024-04-21 01:52:29', 'APX Parramatta', 'CF000000042', 'Accessibility', '2024-12-01 16:25:07', '2024-12-01 16:25:07'),
(5537, '2024-11-24 08:44:04', 'APX Parramatta', 'CF000000089', 'General Experience', '2024-12-04 16:34:43', '2024-12-04 16:34:43'),
(5676, '2024-05-31 08:47:03', 'APX Parramatta', 'CF000000063', 'Internet/Wi-Fi', '2024-12-05 16:28:54', '2024-12-05 16:28:54'),
(5819, '2024-02-19 20:58:20', 'APX Parramatta', 'CF000000006', 'Value for Money', '2024-12-06 16:48:56', '2024-12-06 16:48:56'),
(5820, '2024-11-24 08:44:04', 'APX Parramatta', 'CF000000089', 'Communication', '2024-12-06 16:48:56', '2024-12-06 16:48:56'),
(5821, '2024-12-06 08:13:32', 'APX Parramatta', 'CF000000090', 'Cleanliness', '2024-12-06 16:48:56', '2024-12-06 16:48:56'),
(5822, '2024-12-06 08:13:32', 'APX Parramatta', 'CF000000090', 'Comfort', '2024-12-06 16:48:56', '2024-12-06 16:48:56'),
(6104, '2024-11-05 19:35:28', 'APX Parramatta', 'CF000000085', 'Value for Money', '2024-12-08 16:20:31', '2024-12-08 16:20:31'),
(6249, '2024-05-31 08:47:03', 'APX Parramatta', 'CF000000063', 'Value for Money', '2024-12-09 16:28:27', '2024-12-09 16:28:27'),
(6250, '2024-09-03 11:17:15', 'APX World Square', 'CF000000080', 'Comfort', '2024-12-09 16:28:27', '2024-12-09 16:28:27'),
(6395, '2024-03-20 07:07:19', 'APX Parramatta', 'CF000000019', 'Noise', '2024-12-10 16:22:29', '2024-12-10 16:22:29'),
(6971, '2024-11-21 14:27:24', 'APX Parramatta', 'CF000000088', 'Amenities', '2024-12-14 16:18:57', '2024-12-14 16:18:57'),
(8261, '2024-04-27 05:30:29', 'APX Parramatta', 'CF000000046', 'Uncategorized', '2024-12-23 16:28:45', '2024-12-23 16:28:45'),
(9264, '2024-11-21 14:27:24', 'APX Parramatta', 'CF000000088', 'General Experience', '2024-12-30 16:04:53', '2024-12-30 16:04:53'),
(9978, '2024-04-19 18:58:07', 'APX Parramatta', 'CF000000041', 'Uncategorized', '2025-01-04 16:41:20', '2025-01-04 16:41:20'),
(10118, '2024-04-10 05:40:39', 'APX Parramatta', 'CF000000022', 'Utilities', '2025-01-05 16:37:49', '2025-01-05 16:37:49'),
(10264, '2024-04-17 22:17:11', 'APX Darling Harbour', 'CF000000035', 'General Experience', '2025-01-06 16:11:17', '2025-01-06 16:11:17'),
(11116, '2024-04-21 09:04:00', 'APX World Square', 'CF000000044', 'Cleanliness', '2025-01-12 16:32:20', '2025-01-12 16:32:20'),
(11680, '2024-04-27 20:27:45', 'APX Darling Harbour', 'CF000000047', 'Cleanliness', '2025-01-16 16:02:05', '2025-01-16 16:02:05'),
(11824, '2024-03-20 07:07:19', 'APX Parramatta', 'CF000000019', 'Utilities', '2025-01-17 16:05:13', '2025-01-17 16:05:13'),
(11825, '2025-01-17 10:10:39', 'APX Parramatta', 'CF000000091', 'Noise', '2025-01-17 16:05:13', '2025-01-17 16:05:13'),
(11826, '2025-01-17 10:10:39', 'APX Parramatta', 'CF000000091', 'Comfort', '2025-01-17 16:05:13', '2025-01-17 16:05:13'),
(12261, '2024-06-08 00:43:54', 'APX Parramatta', 'CF000000067', 'Communication', '2025-01-20 16:12:25', '2025-01-20 16:12:25'),
(13562, '2024-09-02 17:42:05', 'APX Darling Harbour', 'CF000000079', 'General Experience', '2025-01-29 16:04:36', '2025-01-29 16:04:36'),
(14866, '2024-06-25 07:27:25', 'APX Darling Harbour', 'CF000000072', 'Utilities', '2025-02-07 16:03:41', '2025-02-07 16:03:41'),
(15014, '2024-04-21 09:04:00', 'APX World Square', 'CF000000044', 'Uncategorized', '2025-02-08 16:06:50', '2025-02-08 16:06:50'),
(15159, '2024-11-21 14:27:24', 'APX Parramatta', 'CF000000088', 'Communication', '2025-02-09 16:04:43', '2025-02-09 16:04:43'),
(15160, '2025-01-17 10:10:39', 'APX Parramatta', 'CF000000091', 'Staff Interaction', '2025-02-09 16:04:43', '2025-02-09 16:04:43'),
(15736, '2024-03-23 04:45:48', 'APX Parramatta', 'CF000000020', 'Staff Interaction', '2025-02-13 16:01:55', '2025-02-13 16:01:55'),
(16610, '2025-02-19 22:23:15', 'APX Parramatta', 'CF000000092', 'Noise', '2025-02-19 16:02:58', '2025-02-19 16:02:58'),
(16611, '2025-02-19 22:23:15', 'APX Parramatta', 'CF000000092', 'Comfort', '2025-02-19 16:02:58', '2025-02-19 16:02:58'),
(16901, '2025-02-19 22:23:15', 'APX Parramatta', 'CF000000092', 'Cleanliness', '2025-02-21 16:02:48', '2025-02-21 16:02:48'),
(16902, '2025-02-19 22:23:15', 'APX Parramatta', 'CF000000092', 'Amenities', '2025-02-21 16:02:48', '2025-02-21 16:02:48'),
(17189, '2024-10-21 19:05:19', 'APX Parramatta', 'CF000000084', 'Amenities', '2025-02-23 16:29:46', '2025-02-23 16:29:46'),
(17335, '2024-11-05 19:35:28', 'APX Parramatta', 'CF000000085', 'Amenities', '2025-02-24 16:09:54', '2025-02-24 16:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `t_ai_health`
--

CREATE TABLE `t_ai_health` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `occupancy_date` date NOT NULL,
  `actual_occupancy` float NOT NULL DEFAULT 0,
  `forecast_occupancy` float NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_ai_health`
--

INSERT INTO `t_ai_health` (`id`, `hotel_id`, `occupancy_date`, `actual_occupancy`, `forecast_occupancy`, `created_at`, `updated_at`) VALUES
(6, 688688, '2024-07-28', 70.37, 69.1089, '2024-07-28 05:41:26', '2024-07-28 09:05:52'),
(9, 688688, '2024-07-29', 57.41, 73.0273, '2024-07-28 09:05:52', '2024-07-29 09:06:05'),
(10, 688688, '2024-06-29', 100, 98.3341, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(11, 688688, '2024-06-30', 70.37, 83.7565, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(12, 688688, '2024-07-01', 79.63, 77.1326, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(13, 688688, '2024-07-02', 70.37, 85.1955, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(14, 688688, '2024-07-03', 59.26, 75.7409, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(15, 688688, '2024-07-04', 64.81, 67.7097, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(16, 688688, '2024-07-05', 100, 76.1586, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(17, 688688, '2024-07-06', 98.15, 97.7292, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(18, 688688, '2024-07-07', 96.3, 76.3913, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(19, 688688, '2024-07-08', 50, 89.8904, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(20, 688688, '2024-07-09', 57.41, 67.5335, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(21, 688688, '2024-07-10', 70.37, 71.2266, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(22, 688688, '2024-07-11', 94.44, 69.2642, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(23, 688688, '2024-07-12', 100, 90.6854, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(24, 688688, '2024-07-13', 100, 99.0263, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(25, 688688, '2024-07-14', 72.22, 81.8833, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(26, 688688, '2024-07-15', 64.81, 76.1834, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(27, 688688, '2024-07-16', 68.52, 75.5588, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(28, 688688, '2024-07-17', 68.52, 74.1939, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(29, 688688, '2024-07-18', 75.93, 72.324, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(30, 688688, '2024-07-19', 87.04, 82.6416, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(31, 688688, '2024-07-20', 98.15, 92.545, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(32, 688688, '2024-07-21', 74.07, 77.5735, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(33, 688688, '2024-07-22', 100, 74.4226, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(34, 688688, '2024-07-23', 96.3, 91.9675, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(35, 688688, '2024-07-24', 79.63, 88.2203, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(36, 688688, '2024-07-25', 66.67, 83.4869, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(37, 688688, '2024-07-26', 75.93, 83.4313, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(38, 688688, '2024-07-27', 77.78, 90.4305, '2024-07-28 22:15:25', '2024-07-28 22:15:25'),
(70, 918492, '2024-06-29', 102.86, 101.048, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(71, 918492, '2024-06-30', 80, 83.7932, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(72, 918492, '2024-07-01', 97.14, 76.0504, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(73, 918492, '2024-07-02', 74.29, 90.3307, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(74, 918492, '2024-07-03', 85.71, 85.5753, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(75, 918492, '2024-07-04', 100, 86.6022, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(76, 918492, '2024-07-05', 102.86, 101.32, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(77, 918492, '2024-07-06', 102.86, 100.673, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(78, 918492, '2024-07-07', 77.14, 86.0682, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(79, 918492, '2024-07-08', 68.57, 78.5055, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(80, 918492, '2024-07-09', 74.29, 78.2733, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(81, 918492, '2024-07-10', 85.71, 84.4295, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(82, 918492, '2024-07-11', 82.86, 87.6343, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(83, 918492, '2024-07-12', 94.29, 94.4346, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(84, 918492, '2024-07-13', 108.57, 98.1938, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(85, 918492, '2024-07-14', 80, 85.9982, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(86, 918492, '2024-07-15', 74.29, 76.2048, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(87, 918492, '2024-07-16', 80, 80.6285, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(88, 918492, '2024-07-17', 91.43, 84.4754, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(89, 918492, '2024-07-18', 77.14, 89.7263, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(90, 918492, '2024-07-19', 80, 92.3214, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(91, 918492, '2024-07-20', 100, 94.1239, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(92, 918492, '2024-07-21', 65.71, 82.8415, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(93, 918492, '2024-07-22', 40, 69.7582, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(94, 918492, '2024-07-23', 65.71, 67.6605, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(95, 918492, '2024-07-24', 80, 77.5732, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(96, 918492, '2024-07-25', 80, 80.7824, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(97, 918492, '2024-07-26', 82.86, 89.5807, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(98, 918492, '2024-07-27', 102.86, 92.81, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(99, 918492, '2024-07-28', 80, 80.9382, '2024-07-28 22:24:38', '2024-07-28 22:24:38'),
(100, 2266432, '2024-06-29', 98.63, 96.434, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(101, 2266432, '2024-06-30', 76.71, 78.671, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(102, 2266432, '2024-07-01', 76.71, 77.2845, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(103, 2266432, '2024-07-02', 94.52, 88.3126, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(104, 2266432, '2024-07-03', 91.78, 91.1474, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(105, 2266432, '2024-07-04', 95.89, 87.8899, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(106, 2266432, '2024-07-05', 97.26, 100.121, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(107, 2266432, '2024-07-06', 100, 99.2686, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(108, 2266432, '2024-07-07', 90.41, 80.2127, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(109, 2266432, '2024-07-08', 91.78, 84.6516, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(110, 2266432, '2024-07-09', 91.78, 97.6055, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(111, 2266432, '2024-07-10', 86.3, 90.5634, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(112, 2266432, '2024-07-11', 80.82, 86.1879, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(113, 2266432, '2024-07-12', 94.52, 93.0247, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(114, 2266432, '2024-07-13', 100, 100.328, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(115, 2266432, '2024-07-14', 86.3, 84.0292, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(116, 2266432, '2024-07-15', 84.93, 84.483, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(117, 2266432, '2024-07-16', 84.93, 93.0764, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(118, 2266432, '2024-07-17', 90.41, 86.5195, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(119, 2266432, '2024-07-18', 68.49, 87.9103, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(120, 2266432, '2024-07-19', 90.41, 86.4327, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(121, 2266432, '2024-07-20', 95.89, 97.9243, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(122, 2266432, '2024-07-21', 73.97, 80.6629, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(123, 2266432, '2024-07-22', 76.71, 77.5566, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(124, 2266432, '2024-07-23', 84.93, 86.4461, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(125, 2266432, '2024-07-24', 98.63, 85.4223, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(126, 2266432, '2024-07-25', 83.56, 88.796, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(127, 2266432, '2024-07-26', 98.63, 92.829, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(128, 2266432, '2024-07-27', 100, 100.237, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(129, 2266432, '2024-07-28', 82.19, 79.204, '2024-07-28 22:25:38', '2024-07-28 22:25:38'),
(130, 688688, '2024-07-30', 66.67, 66.8273, '2024-07-29 09:06:05', '2024-07-30 09:06:03'),
(131, 688688, '2024-07-31', 72.22, 70.3811, '2024-07-30 09:06:03', '2024-07-31 09:06:00'),
(132, 688688, '2024-08-01', 0, 69.2437, '2024-07-31 09:06:00', '2024-07-31 09:06:00'),
(133, 688688, '2024-08-03', 98.15, 84.9969, '2024-08-02 09:05:59', '2024-08-03 09:05:53'),
(134, 688688, '2024-08-04', 64.81, 78.3826, '2024-08-03 09:05:53', '2024-08-04 09:05:53'),
(135, 688688, '2024-08-05', 61.11, 67.8963, '2024-08-04 09:05:53', '2024-08-05 09:05:45'),
(136, 688688, '2024-08-06', 62.96, 71.1985, '2024-08-05 09:05:45', '2024-08-06 09:05:56'),
(137, 688688, '2024-08-07', 70.37, 69.3747, '2024-08-06 09:05:56', '2024-08-07 09:05:54'),
(138, 688688, '2024-08-08', 85.19, 69.8439, '2024-08-07 09:05:55', '2024-08-08 09:05:56'),
(139, 688688, '2024-08-09', 96.3, 85.5007, '2024-08-08 09:05:56', '2024-08-09 09:05:44'),
(140, 688688, '2024-08-10', 100, 96.5301, '2024-08-09 09:05:44', '2024-08-10 09:05:55'),
(141, 688688, '2024-08-11', 77.78, 79.6996, '2024-08-10 09:05:55', '2024-08-11 09:05:56'),
(142, 688688, '2024-08-12', 74.07, 77.9873, '2024-08-11 09:05:56', '2024-08-12 09:05:42'),
(143, 688688, '2024-08-13', 77.78, 78.3095, '2024-08-12 09:05:42', '2024-08-13 09:05:45'),
(144, 688688, '2024-08-14', 77.78, 80.5552, '2024-08-13 09:05:45', '2024-08-14 09:05:44'),
(145, 688688, '2024-08-15', 72.22, 78.8461, '2024-08-14 09:05:44', '2024-08-15 09:05:54'),
(146, 688688, '2024-08-16', 77.78, 84.0714, '2024-08-15 09:05:54', '2024-08-16 09:05:47'),
(147, 688688, '2024-08-17', 98.15, 88.4668, '2024-08-16 09:05:47', '2024-08-17 09:05:46'),
(148, 688688, '2024-08-18', 79.63, 77.5342, '2024-08-17 09:05:46', '2024-08-18 09:05:55'),
(149, 688688, '2024-08-19', 75.93, 74.7336, '2024-08-18 09:05:55', '2024-08-19 09:05:58'),
(150, 688688, '2024-08-20', 98.15, 76.6784, '2024-08-19 09:05:58', '2024-08-20 09:05:56'),
(151, 688688, '2024-08-21', 100, 89.0614, '2024-08-20 09:05:56', '2024-08-21 09:05:55'),
(152, 688688, '2024-08-22', 0, 88.7924, '2024-08-21 09:05:55', '2024-08-21 09:05:55'),
(153, 688688, '2024-08-24', 90.74, 93.8228, '2024-08-23 09:05:58', '2024-08-24 09:05:51'),
(154, 688688, '2024-08-25', 0, 75.8701, '2024-08-24 09:05:51', '2024-08-24 09:05:51'),
(155, 688688, '2024-08-27', 81.48, 83.3171, '2024-08-26 09:06:01', '2024-08-27 09:05:50'),
(156, 688688, '2024-08-28', 0, 81.8595, '2024-08-27 09:05:50', '2024-08-27 09:05:50'),
(157, 688688, '2023-08-29', 0, 55.1398, '2024-08-28 09:05:37', '2024-08-28 09:05:37'),
(158, 688688, '2024-08-30', 94.44, 88.1568, '2024-08-29 09:06:05', '2024-08-30 09:05:54'),
(159, 688688, '2024-08-31', 100, 99.261, '2024-08-30 09:05:54', '2024-08-31 09:06:07'),
(160, 688688, '2024-09-01', 79.63, 82.4482, '2024-08-31 09:06:07', '2024-09-01 09:06:09'),
(161, 688688, '2024-09-02', 83.33, 78.8974, '2024-09-01 09:06:09', '2024-09-02 09:05:57'),
(162, 688688, '2024-09-03', 85.19, 84.9924, '2024-09-02 09:05:57', '2024-09-03 09:05:46'),
(163, 688688, '2024-09-04', 85.19, 85.7658, '2024-09-03 09:05:46', '2024-09-04 09:05:56'),
(164, 688688, '2024-09-05', 85.19, 81.4697, '2024-09-04 09:05:56', '2024-09-05 09:06:02'),
(165, 688688, '2024-09-06', 0, 88.1054, '2024-09-05 09:06:02', '2024-09-05 09:06:02'),
(166, 688688, '2023-09-07', 79.63, 88.1819, '2024-09-06 09:05:30', '2024-09-07 09:05:35'),
(167, 688688, '2023-09-08', 0, 82.8438, '2024-09-07 09:05:35', '2024-09-07 09:05:35'),
(168, 688688, '2024-09-09', 79.63, 81.4909, '2024-09-08 09:06:03', '2024-09-09 09:06:00'),
(169, 688688, '2024-09-10', 94.44, 83.5776, '2024-09-09 09:06:00', '2024-09-10 09:06:01'),
(170, 688688, '2024-09-11', 100, 90.5599, '2024-09-10 09:06:01', '2024-09-11 09:05:54'),
(171, 688688, '2024-09-12', 96.3, 90.1555, '2024-09-11 09:05:54', '2024-09-12 09:05:53'),
(172, 688688, '2024-09-13', 100, 96.3765, '2024-09-12 09:05:53', '2024-09-13 09:05:47'),
(173, 688688, '2024-09-14', 100, 104.814, '2024-09-13 09:05:47', '2024-09-14 09:06:03'),
(174, 688688, '2024-09-15', 74.07, 83.9599, '2024-09-14 09:06:03', '2024-09-15 09:05:46'),
(175, 688688, '2024-09-16', 62.96, 78.6997, '2024-09-15 09:05:46', '2024-09-16 09:05:59'),
(176, 688688, '2024-09-17', 0, 75.7724, '2024-09-16 09:05:59', '2024-09-16 09:05:59'),
(177, 688688, '2024-10-01', 70.37, 81.1677, '2024-09-30 09:05:49', '2024-10-01 09:06:03'),
(178, 918492, '2024-10-01', 88.57, 92.7054, '2024-09-30 09:06:23', '2024-10-01 09:06:47'),
(179, 2266432, '2024-10-01', 68.49, 94.2562, '2024-09-30 09:07:34', '2024-10-01 09:08:04'),
(180, 688688, '2024-10-02', 66.67, 78.1837, '2024-10-01 09:06:03', '2024-10-02 09:06:05'),
(181, 918492, '2024-10-02', 77.14, 90.3059, '2024-10-01 09:06:47', '2024-10-02 09:06:49'),
(182, 2266432, '2024-10-02', 65.75, 84.8296, '2024-10-01 09:08:04', '2024-10-02 09:09:41'),
(183, 688688, '2024-10-03', 55.56, 72.8628, '2024-10-02 09:06:05', '2024-10-03 09:06:19'),
(184, 918492, '2024-10-03', 100, 87.0704, '2024-10-02 09:06:49', '2024-10-03 09:07:13'),
(185, 2266432, '2024-10-03', 76.71, 77.2063, '2024-10-02 09:09:41', '2024-10-03 09:08:50'),
(186, 688688, '2024-10-04', 94.44, 75.9261, '2024-10-03 09:06:19', '2024-10-04 09:06:31'),
(187, 918492, '2024-10-04', 108.57, 100.531, '2024-10-03 09:07:13', '2024-10-04 09:07:11'),
(188, 2266432, '2024-10-04', 100, 86.9078, '2024-10-03 09:08:50', '2024-10-04 09:08:51'),
(189, 688688, '2024-10-05', 100, 98.0843, '2024-10-04 09:06:31', '2024-10-05 09:06:09'),
(190, 918492, '2024-10-05', 108.57, 100.899, '2024-10-04 09:07:11', '2024-10-05 09:06:52'),
(191, 2266432, '2024-10-05', 100, 97.5713, '2024-10-04 09:08:51', '2024-10-05 09:08:19'),
(192, 688688, '2024-10-06', 94.44, 72.2252, '2024-10-05 09:06:09', '2024-10-06 09:06:09'),
(193, 918492, '2024-10-06', 108.57, 89.274, '2024-10-05 09:06:52', '2024-10-06 09:07:05'),
(194, 2266432, '2024-10-06', 98.63, 82.6788, '2024-10-05 09:08:19', '2024-10-06 09:08:34'),
(195, 688688, '2024-10-07', 40.74, 85.9447, '2024-10-06 09:06:09', '2024-10-07 09:05:58'),
(196, 918492, '2024-10-07', 97.14, 89.1629, '2024-10-06 09:07:05', '2024-10-07 09:07:10'),
(197, 2266432, '2024-10-07', 68.49, 90.1632, '2024-10-06 09:08:34', '2024-10-07 09:08:41'),
(198, 688688, '2024-10-08', 50, 60.2833, '2024-10-07 09:05:58', '2024-10-08 09:06:08'),
(199, 918492, '2024-10-08', 94.29, 97.3063, '2024-10-07 09:07:10', '2024-10-08 09:06:57'),
(200, 2266432, '2024-10-08', 86.3, 81.027, '2024-10-07 09:08:42', '2024-10-08 09:09:07'),
(201, 688688, '2024-10-09', 59.26, 66.6053, '2024-10-08 09:06:08', '2024-10-09 09:06:00'),
(202, 918492, '2024-10-09', 94.29, 91.3329, '2024-10-08 09:06:57', '2024-10-09 09:06:48'),
(203, 2266432, '2024-10-09', 89.04, 89.2277, '2024-10-08 09:09:07', '2024-10-09 09:08:26'),
(204, 688688, '2024-10-10', 57.41, 62.751, '2024-10-09 09:06:00', '2024-10-10 09:06:05'),
(205, 918492, '2024-10-10', 94.29, 94.9522, '2024-10-09 09:06:48', '2024-10-10 09:06:51'),
(206, 2266432, '2024-10-10', 87.67, 85.9573, '2024-10-09 09:08:26', '2024-10-10 09:08:28'),
(207, 688688, '2024-10-11', 100, 73.0881, '2024-10-10 09:06:05', '2024-10-11 09:05:56'),
(208, 918492, '2024-10-11', 108.57, 100.851, '2024-10-10 09:06:51', '2024-10-11 09:06:38'),
(209, 2266432, '2024-10-11', 100, 94.3379, '2024-10-10 09:08:28', '2024-10-11 09:08:14'),
(210, 688688, '2024-10-12', 100, 98.4408, '2024-10-11 09:05:56', '2024-10-12 09:06:52'),
(211, 918492, '2024-10-12', 108.57, 104.199, '2024-10-11 09:06:38', '2024-10-12 09:07:37'),
(212, 2266432, '2024-10-12', 100, 97.7413, '2024-10-11 09:08:14', '2024-10-12 09:10:08'),
(213, 688688, '2024-10-13', 35.19, 73.3458, '2024-10-12 09:06:52', '2024-10-13 09:05:58'),
(214, 918492, '2024-10-13', 88.57, 92.9858, '2024-10-12 09:07:37', '2024-10-13 09:06:47'),
(215, 2266432, '2024-10-13', 86.3, 84.4909, '2024-10-12 09:10:08', '2024-10-13 09:08:27'),
(216, 688688, '2024-10-14', 90.74, 48.0893, '2024-10-13 09:05:58', '2024-10-14 09:06:03'),
(217, 918492, '2024-10-14', 85.71, 85.1641, '2024-10-13 09:06:47', '2024-10-14 09:06:43'),
(218, 2266432, '2024-10-14', 84.93, 79.8132, '2024-10-13 09:08:27', '2024-10-14 09:08:09'),
(219, 688688, '2024-10-15', 0, 78.2626, '2024-10-14 09:06:03', '2024-10-14 09:06:03'),
(220, 918492, '2024-10-15', 108.57, 92.1409, '2024-10-14 09:06:43', '2024-10-15 09:06:30'),
(221, 2266432, '2024-10-15', 100, 88.2847, '2024-10-14 09:08:09', '2024-10-15 09:08:09'),
(222, 688688, '2023-10-16', 0, 68.0653, '2024-10-15 09:05:41', '2024-10-15 09:05:41'),
(223, 918492, '2024-10-16', 108.57, 96.3586, '2024-10-15 09:06:30', '2024-10-16 09:06:48'),
(224, 2266432, '2024-10-16', 100, 96.1486, '2024-10-15 09:08:09', '2024-10-16 09:08:30'),
(225, 688688, '2024-10-17', 100, 80.241, '2024-10-16 09:06:06', '2024-10-17 09:06:05'),
(226, 918492, '2024-10-17', 108.57, 96.1257, '2024-10-16 09:06:48', '2024-10-17 09:07:05'),
(227, 2266432, '2024-10-17', 100, 93.122, '2024-10-16 09:08:30', '2024-10-17 09:09:13'),
(228, 688688, '2024-10-18', 100, 103.505, '2024-10-17 09:06:05', '2024-10-18 09:05:58'),
(229, 918492, '2024-10-18', 108.57, 110.17, '2024-10-17 09:07:05', '2024-10-18 09:06:44'),
(230, 2266432, '2024-10-18', 100, 103.721, '2024-10-17 09:09:13', '2024-10-18 09:08:17'),
(231, 688688, '2024-10-19', 100, 99.9501, '2024-10-18 09:05:58', '2024-10-19 09:06:33'),
(232, 918492, '2024-10-19', 108.57, 105.925, '2024-10-18 09:06:44', '2024-10-19 09:07:45'),
(233, 2266432, '2024-10-19', 100, 99.7072, '2024-10-18 09:08:17', '2024-10-19 09:09:45'),
(234, 688688, '2024-10-20', 72.22, 80.4618, '2024-10-19 09:06:33', '2024-10-20 09:07:27'),
(235, 918492, '2024-10-20', 88.57, 95.1195, '2024-10-19 09:07:45', '2024-10-20 09:08:59'),
(236, 2266432, '2024-10-20', 90.41, 86.823, '2024-10-19 09:09:45', '2024-10-20 09:11:54'),
(237, 688688, '2024-10-21', 85.19, 70.7523, '2024-10-20 09:07:27', '2024-10-21 09:06:33'),
(238, 918492, '2024-10-21', 108.57, 87.1554, '2024-10-20 09:08:59', '2024-10-21 09:08:22'),
(239, 2266432, '2024-10-21', 100, 83.9472, '2024-10-20 09:11:54', '2024-10-21 09:11:37'),
(240, 688688, '2024-10-22', 100, 87.5028, '2024-10-21 09:06:33', '2024-10-22 09:07:16'),
(241, 918492, '2024-10-22', 108.57, 102.754, '2024-10-21 09:08:22', '2024-10-22 09:08:47'),
(242, 2266432, '2024-10-22', 100, 101.084, '2024-10-21 09:11:37', '2024-10-22 09:11:49'),
(243, 688688, '2024-10-23', 100, 85.7447, '2024-10-22 09:07:16', '2024-10-23 09:06:27'),
(244, 918492, '2024-10-23', 108.57, 98.7251, '2024-10-22 09:08:47', '2024-10-23 09:07:45'),
(245, 2266432, '2024-10-23', 100, 98.1065, '2024-10-22 09:11:49', '2024-10-23 09:10:05'),
(246, 688688, '2024-10-24', 70.37, 90.7503, '2024-10-23 09:06:27', '2024-10-24 09:07:15'),
(247, 918492, '2024-10-24', 85.71, 103.971, '2024-10-23 09:07:45', '2024-10-24 09:09:15'),
(248, 2266432, '2024-10-24', 100, 95.8834, '2024-10-23 09:10:05', '2024-10-24 09:11:32'),
(249, 688688, '2024-10-25', 83.33, 93.2954, '2024-10-24 09:07:16', '2024-10-25 09:06:52'),
(250, 918492, '2024-10-25', 108.57, 100.856, '2024-10-24 09:09:15', '2024-10-25 09:08:16'),
(251, 2266432, '2024-10-25', 100, 103.136, '2024-10-24 09:11:32', '2024-10-25 09:10:31'),
(252, 688688, '2024-10-26', 100, 92.2373, '2024-10-25 09:06:52', '2024-10-26 09:07:16'),
(253, 918492, '2024-10-26', 108.57, 108.608, '2024-10-25 09:08:17', '2024-10-26 09:08:54'),
(254, 2266432, '2024-10-26', 100, 100.79, '2024-10-25 09:10:31', '2024-10-26 09:11:35'),
(255, 688688, '2024-10-27', 35.19, 76.248, '2024-10-26 09:07:16', '2024-10-27 09:07:19'),
(256, 918492, '2024-10-27', 71.43, 91.1319, '2024-10-26 09:08:54', '2024-10-27 09:09:08'),
(257, 2266432, '2024-10-27', 82.19, 87.7335, '2024-10-26 09:11:35', '2024-10-27 09:11:54'),
(258, 688688, '2024-10-28', 55.56, 53.697, '2024-10-27 09:07:19', '2024-10-28 09:07:17'),
(259, 918492, '2024-10-28', 97.14, 85.4267, '2024-10-27 09:09:08', '2024-10-28 09:08:52'),
(260, 2266432, '2024-10-28', 100, 82.3775, '2024-10-27 09:11:54', '2024-10-28 09:11:26'),
(261, 688688, '2024-10-29', 62.96, 69.2673, '2024-10-28 09:07:17', '2024-10-29 09:06:46'),
(262, 918492, '2024-10-29', 108.57, 98.7807, '2024-10-28 09:08:52', '2024-10-29 09:08:12'),
(263, 2266432, '2024-10-29', 100, 101.244, '2024-10-28 09:11:26', '2024-10-29 09:11:24'),
(264, 688688, '2024-10-30', 55.56, 64.9061, '2024-10-29 09:06:46', '2024-10-30 09:06:43'),
(265, 918492, '2024-10-30', 108.57, 100.211, '2024-10-29 09:08:12', '2024-10-30 09:08:22'),
(266, 2266432, '2024-10-30', 100, 98.058, '2024-10-29 09:11:24', '2024-10-30 09:10:42'),
(267, 688688, '2024-10-31', 59.26, 66.2577, '2024-10-30 09:06:43', '2024-10-31 09:06:58'),
(268, 918492, '2024-10-31', 85.71, 97.5529, '2024-10-30 09:08:22', '2024-10-31 09:08:40'),
(269, 2266432, '2024-10-31', 97.26, 96.3937, '2024-10-30 09:10:42', '2024-10-31 09:11:00'),
(270, 688688, '2024-11-01', 64.81, 77.0481, '2024-10-31 09:06:58', '2024-11-01 09:06:47'),
(271, 918492, '2024-11-01', 105.71, 102.918, '2024-10-31 09:08:40', '2024-11-01 09:08:08'),
(272, 2266432, '2024-11-01', 100, 101.077, '2024-10-31 09:11:00', '2024-11-01 09:10:35'),
(273, 688688, '2024-11-02', 100, 74.5591, '2024-11-01 09:06:47', '2024-11-02 09:06:49'),
(274, 918492, '2024-11-02', 108.57, 104.219, '2024-11-01 09:08:08', '2024-11-02 09:08:11'),
(275, 2266432, '2024-11-02', 100, 101.434, '2024-11-01 09:10:35', '2024-11-02 09:10:30'),
(276, 688688, '2024-11-03', 46.3, 68.968, '2024-11-02 09:06:49', '2024-11-03 09:06:48'),
(277, 918492, '2024-11-03', 71.43, 88.5111, '2024-11-02 09:08:11', '2024-11-03 09:08:15'),
(278, 2266432, '2024-11-03', 71.23, 87.7926, '2024-11-02 09:10:30', '2024-11-03 09:10:45'),
(279, 688688, '2024-11-04', 51.85, 58.1215, '2024-11-03 09:06:48', '2024-11-04 09:06:43'),
(280, 918492, '2024-11-04', 74.29, 84.5558, '2024-11-03 09:08:15', '2024-11-04 09:08:02'),
(281, 2266432, '2024-11-04', 93.15, 79.2753, '2024-11-03 09:10:45', '2024-11-04 09:10:11'),
(282, 688688, '2024-11-05', 79.63, 67.1573, '2024-11-04 09:06:43', '2024-11-05 09:06:39'),
(283, 918492, '2024-11-05', 82.86, 92.9188, '2024-11-04 09:08:02', '2024-11-05 09:08:07'),
(284, 2266432, '2024-11-05', 98.63, 98.2656, '2024-11-04 09:10:11', '2024-11-05 09:10:25'),
(285, 688688, '2024-11-06', 100, 74.2564, '2024-11-05 09:06:39', '2024-11-06 09:06:44'),
(286, 918492, '2024-11-06', 108.57, 90.114, '2024-11-05 09:08:07', '2024-11-06 09:08:10'),
(287, 2266432, '2024-11-06', 100, 97.5913, '2024-11-05 09:10:25', '2024-11-06 09:10:20'),
(288, 688688, '2024-11-07', 98.15, 86.4561, '2024-11-06 09:06:44', '2024-11-07 09:06:53'),
(289, 918492, '2024-11-07', 108.57, 94.5874, '2024-11-06 09:08:10', '2024-11-07 09:08:09'),
(290, 2266432, '2024-11-07', 100, 96.3074, '2024-11-06 09:10:20', '2024-11-07 09:10:29'),
(291, 688688, '2024-11-08', 77.78, 98.4509, '2024-11-07 09:06:53', '2024-11-08 09:06:35'),
(292, 918492, '2024-11-08', 108.57, 105.195, '2024-11-07 09:08:09', '2024-11-08 09:07:57'),
(293, 2266432, '2024-11-08', 100, 101.632, '2024-11-07 09:10:29', '2024-11-08 09:10:12'),
(294, 688688, '2024-11-09', 100, 87.1841, '2024-11-08 09:06:35', '2024-11-09 09:06:42'),
(295, 918492, '2024-11-09', 108.57, 104.521, '2024-11-08 09:07:57', '2024-11-09 09:08:08'),
(296, 2266432, '2024-11-09', 100, 100.433, '2024-11-08 09:10:12', '2024-11-09 09:10:20'),
(297, 688688, '2024-11-10', 90.74, 72.082, '2024-11-09 09:06:42', '2024-11-10 09:06:42'),
(298, 918492, '2024-11-10', 91.43, 87.7978, '2024-11-09 09:08:08', '2024-11-10 09:08:06'),
(299, 2266432, '2024-11-10', 98.63, 85.4751, '2024-11-09 09:10:20', '2024-11-10 09:10:22'),
(300, 688688, '2024-11-11', 66.67, 83.7245, '2024-11-10 09:06:42', '2024-11-11 09:06:48'),
(301, 918492, '2024-11-11', 108.57, 87.3957, '2024-11-10 09:08:06', '2024-11-11 09:08:15'),
(302, 2266432, '2024-11-11', 100, 95.4977, '2024-11-10 09:10:22', '2024-11-11 09:10:49'),
(303, 688688, '2024-11-12', 75.93, 78.8885, '2024-11-11 09:06:48', '2024-11-12 09:06:43'),
(304, 918492, '2024-11-12', 108.57, 103.788, '2024-11-11 09:08:15', '2024-11-12 09:08:11'),
(305, 2266432, '2024-11-12', 100, 102.47, '2024-11-11 09:10:49', '2024-11-12 09:10:19'),
(306, 688688, '2024-11-13', 68.52, 82.0928, '2024-11-12 09:06:43', '2024-11-13 09:07:02'),
(307, 918492, '2024-11-13', 108.57, 102.646, '2024-11-12 09:08:11', '2024-11-13 09:08:22'),
(308, 2266432, '2024-11-13', 100, 99.5587, '2024-11-12 09:10:19', '2024-11-13 09:10:48'),
(309, 688688, '2024-11-14', 37.04, 72.2029, '2024-11-13 09:07:02', '2024-11-14 09:06:45'),
(310, 918492, '2024-11-14', 108.57, 103.116, '2024-11-13 09:08:22', '2024-11-14 09:08:12'),
(311, 2266432, '2024-11-14', 100, 97.1945, '2024-11-13 09:10:48', '2024-11-14 09:10:38'),
(312, 688688, '2024-11-15', 81.48, 64.2031, '2024-11-14 09:06:45', '2024-11-15 09:06:47'),
(313, 918492, '2024-11-15', 108.57, 110.422, '2024-11-14 09:08:12', '2024-11-15 09:08:07'),
(314, 2266432, '2024-11-15', 100, 102.648, '2024-11-14 09:10:38', '2024-11-15 09:10:22'),
(315, 688688, '2024-11-16', 100, 90.2876, '2024-11-15 09:06:47', '2024-11-16 09:06:49'),
(316, 918492, '2024-11-16', 108.57, 106.32, '2024-11-15 09:08:07', '2024-11-16 09:08:13'),
(317, 2266432, '2024-11-16', 100, 101.365, '2024-11-15 09:10:22', '2024-11-16 09:10:33'),
(318, 688688, '2024-11-17', 44.44, 68.302, '2024-11-16 09:06:49', '2024-11-17 09:06:54'),
(319, 918492, '2024-11-17', 91.43, 90.7138, '2024-11-16 09:08:13', '2024-11-17 09:08:29'),
(320, 2266432, '2024-11-17', 90.41, 88.9871, '2024-11-16 09:10:33', '2024-11-17 09:10:37'),
(321, 688688, '2024-11-18', 62.96, 57.5573, '2024-11-17 09:06:54', '2024-11-18 09:06:39'),
(322, 918492, '2024-11-18', 97.14, 92.0212, '2024-11-17 09:08:29', '2024-11-18 09:08:01'),
(323, 2266432, '2024-11-18', 94.52, 92.6201, '2024-11-17 09:10:37', '2024-11-18 09:10:34'),
(324, 688688, '2024-11-19', 81.48, 72.5493, '2024-11-18 09:06:39', '2024-11-19 09:06:48'),
(325, 918492, '2024-11-19', 108.57, 103.597, '2024-11-18 09:08:01', '2024-11-19 09:08:16'),
(326, 2266432, '2024-11-19', 100, 99.808, '2024-11-18 09:10:34', '2024-11-19 09:10:40'),
(327, 688688, '2024-11-20', 77.78, 78.4564, '2024-11-19 09:06:48', '2024-11-20 09:06:47'),
(328, 918492, '2024-11-20', 108.57, 103.773, '2024-11-19 09:08:16', '2024-11-20 09:08:07'),
(329, 2266432, '2024-11-20', 100, 99.8868, '2024-11-19 09:10:40', '2024-11-20 09:10:27'),
(330, 688688, '2024-11-21', 100, 68.3775, '2024-11-20 09:06:47', '2024-11-21 09:06:38'),
(331, 918492, '2024-11-21', 108.57, 103.689, '2024-11-20 09:08:07', '2024-11-21 09:07:55'),
(332, 2266432, '2024-11-21', 100, 96.7435, '2024-11-20 09:10:27', '2024-11-21 09:10:03'),
(333, 688688, '2024-11-22', 83.33, 98.223, '2024-11-21 09:06:38', '2024-11-22 09:06:37'),
(334, 918492, '2024-11-22', 108.57, 110.333, '2024-11-21 09:07:55', '2024-11-22 09:08:02'),
(335, 2266432, '2024-11-22', 100, 102.424, '2024-11-21 09:10:04', '2024-11-22 09:10:29'),
(336, 688688, '2024-11-23', 100, 91.0119, '2024-11-22 09:06:37', '2024-11-23 09:06:37'),
(337, 918492, '2024-11-23', 108.57, 105.889, '2024-11-22 09:08:02', '2024-11-23 09:08:05'),
(338, 2266432, '2024-11-23', 100, 100.821, '2024-11-22 09:10:29', '2024-11-23 09:10:37'),
(339, 688688, '2024-11-24', 55.56, 71.274, '2024-11-23 09:06:37', '2024-11-24 09:06:28'),
(340, 918492, '2024-11-24', 82.86, 92.2654, '2024-11-23 09:08:05', '2024-11-24 09:07:45'),
(341, 2266432, '2024-11-24', 83.56, 89.0243, '2024-11-23 09:10:37', '2024-11-24 09:10:16'),
(342, 688688, '2024-11-25', 51.85, 59.9407, '2024-11-24 09:06:28', '2024-11-25 09:06:44'),
(343, 918492, '2024-11-25', 88.57, 87.9154, '2024-11-24 09:07:45', '2024-11-25 09:08:08'),
(344, 2266432, '2024-11-25', 95.89, 88.2724, '2024-11-24 09:10:16', '2024-11-25 09:10:27'),
(345, 688688, '2024-11-26', 81.48, 75.0815, '2024-11-25 09:06:44', '2024-11-26 09:06:44'),
(346, 918492, '2024-11-26', 97.14, 102.719, '2024-11-25 09:08:08', '2024-11-26 09:08:07'),
(347, 2266432, '2024-11-26', 100, 99.8322, '2024-11-25 09:10:27', '2024-11-26 09:10:33'),
(348, 688688, '2024-11-27', 100, 77.9506, '2024-11-26 09:06:44', '2024-11-27 09:06:47'),
(349, 918492, '2024-11-27', 108.57, 98.1094, '2024-11-26 09:08:07', '2024-11-27 09:08:04'),
(350, 2266432, '2024-11-27', 100, 97.2028, '2024-11-26 09:10:33', '2024-11-27 09:10:21'),
(351, 688688, '2024-11-28', 100, 85.3842, '2024-11-27 09:06:47', '2024-11-28 09:06:39'),
(352, 918492, '2024-11-28', 108.57, 103.185, '2024-11-27 09:08:04', '2024-11-28 09:08:02'),
(353, 2266432, '2024-11-28', 100, 95.8173, '2024-11-27 09:10:21', '2024-11-28 09:10:27'),
(354, 688688, '2024-11-29', 100, 97.1969, '2024-11-28 09:06:39', '2024-11-29 09:06:44'),
(355, 918492, '2024-11-29', 108.57, 108.161, '2024-11-28 09:08:02', '2024-11-29 09:08:07'),
(356, 2266432, '2024-11-29', 100, 101.491, '2024-11-28 09:10:27', '2024-11-29 09:10:30'),
(357, 688688, '2024-11-30', 100, 105.092, '2024-11-29 09:06:44', '2024-11-30 09:06:49'),
(358, 918492, '2024-11-30', 105.71, 106.09, '2024-11-29 09:08:07', '2024-11-30 09:08:15'),
(359, 2266432, '2024-11-30', 100, 99.6692, '2024-11-29 09:10:30', '2024-11-30 09:10:41'),
(360, 688688, '2024-12-01', 42.59, 69.3561, '2024-11-30 09:06:49', '2024-12-01 09:06:35'),
(361, 918492, '2024-12-01', 91.43, 86.6142, '2024-11-30 09:08:15', '2024-12-01 09:08:05'),
(362, 2266432, '2024-12-01', 87.67, 88.1513, '2024-11-30 09:10:41', '2024-12-01 09:10:33'),
(363, 688688, '2024-12-02', 42.59, 53.4032, '2024-12-01 09:06:35', '2024-12-02 09:06:51'),
(364, 918492, '2024-12-02', 91.43, 89.8311, '2024-12-01 09:08:05', '2024-12-02 09:08:15'),
(365, 2266432, '2024-12-02', 97.26, 91.1085, '2024-12-01 09:10:33', '2024-12-02 09:10:40'),
(366, 688688, '2024-12-03', 77.78, 70.0317, '2024-12-02 09:06:51', '2024-12-03 09:06:42'),
(367, 918492, '2024-12-03', 105.71, 98.491, '2024-12-02 09:08:15', '2024-12-03 09:08:01'),
(368, 2266432, '2024-12-03', 100, 100.975, '2024-12-02 09:10:40', '2024-12-03 09:10:12'),
(369, 688688, '2024-12-04', 100, 77.0591, '2024-12-03 09:06:42', '2024-12-04 09:06:45'),
(370, 918492, '2024-12-04', 105.71, 103.347, '2024-12-03 09:08:01', '2024-12-04 09:08:09'),
(371, 2266432, '2024-12-04', 100, 99.4584, '2024-12-03 09:10:12', '2024-12-04 09:10:36'),
(372, 688688, '2024-12-05', 92.59, 84.4708, '2024-12-04 09:06:46', '2024-12-05 09:06:44'),
(373, 918492, '2024-12-05', 105.71, 100.202, '2024-12-04 09:08:09', '2024-12-05 09:08:06'),
(374, 2266432, '2024-12-05', 100, 97.7972, '2024-12-04 09:10:36', '2024-12-05 09:10:30'),
(375, 688688, '2024-12-06', 96.3, 91.4335, '2024-12-05 09:06:44', '2024-12-06 09:06:44'),
(376, 918492, '2024-12-06', 105.71, 108.996, '2024-12-05 09:08:06', '2024-12-06 09:08:15'),
(377, 2266432, '2024-12-06', 100, 101.599, '2024-12-05 09:10:31', '2024-12-06 09:10:45'),
(378, 688688, '2024-12-07', 100, 103.801, '2024-12-06 09:06:44', '2024-12-07 09:06:40'),
(379, 918492, '2024-12-07', 105.71, 103.223, '2024-12-06 09:08:15', '2024-12-07 09:08:05'),
(380, 2266432, '2024-12-07', 100, 99.9064, '2024-12-06 09:10:45', '2024-12-07 09:10:42'),
(381, 688688, '2024-12-08', 22.22, 68.149, '2024-12-07 09:06:40', '2024-12-08 09:06:52'),
(382, 918492, '2024-12-08', 80, 90.7831, '2024-12-07 09:08:05', '2024-12-08 09:08:24'),
(383, 2266432, '2024-12-08', 79.45, 88.4917, '2024-12-07 09:10:42', '2024-12-08 09:10:55'),
(384, 688688, '2024-12-09', 42.59, 47.7946, '2024-12-08 09:06:52', '2024-12-09 09:06:52'),
(385, 918492, '2024-12-09', 94.29, 85.5661, '2024-12-08 09:08:24', '2024-12-09 09:08:22'),
(386, 2266432, '2024-12-09', 82.19, 87.4375, '2024-12-08 09:10:55', '2024-12-09 09:11:02'),
(387, 688688, '2024-12-10', 50, 70.245, '2024-12-09 09:06:52', '2024-12-10 09:06:52'),
(388, 918492, '2024-12-10', 100, 103.218, '2024-12-09 09:08:22', '2024-12-10 09:08:20'),
(389, 2266432, '2024-12-10', 98.63, 93.0949, '2024-12-09 09:11:02', '2024-12-10 09:10:55'),
(390, 688688, '2024-12-11', 50, 69.0781, '2024-12-10 09:06:52', '2024-12-11 09:06:51'),
(391, 918492, '2024-12-11', 102.86, 100.282, '2024-12-10 09:08:20', '2024-12-11 09:08:20'),
(392, 2266432, '2024-12-11', 100, 97.7182, '2024-12-10 09:10:55', '2024-12-11 09:10:53'),
(393, 688688, '2024-12-12', 46.3, 56.448, '2024-12-11 09:06:51', '2024-12-12 09:06:47'),
(394, 918492, '2024-12-12', 105.71, 101.79, '2024-12-11 09:08:20', '2024-12-12 09:08:09'),
(395, 2266432, '2024-12-12', 95.89, 96.5418, '2024-12-11 09:10:53', '2024-12-12 09:10:20'),
(396, 688688, '2024-12-13', 50, 68.9289, '2024-12-12 09:06:47', '2024-12-13 09:06:40'),
(397, 918492, '2024-12-13', 105.71, 106.258, '2024-12-12 09:08:09', '2024-12-13 09:08:10'),
(398, 2266432, '2024-12-13', 100, 98.5982, '2024-12-12 09:10:20', '2024-12-13 09:10:42'),
(399, 688688, '2024-12-14', 85.19, 72.086, '2024-12-13 09:06:40', '2024-12-14 09:06:49'),
(400, 918492, '2024-12-14', 105.71, 102.511, '2024-12-13 09:08:10', '2024-12-14 09:08:21'),
(401, 2266432, '2024-12-14', 100, 97.8441, '2024-12-13 09:10:42', '2024-12-14 09:10:52'),
(402, 688688, '2024-12-15', 31.48, 44.3895, '2024-12-14 09:06:49', '2024-12-15 09:06:44'),
(403, 918492, '2024-12-15', 51.43, 87.1008, '2024-12-14 09:08:21', '2024-12-15 09:08:14'),
(404, 2266432, '2024-12-15', 86.3, 86.998, '2024-12-14 09:10:52', '2024-12-15 09:10:40'),
(405, 688688, '2024-12-16', 22.22, 41.0604, '2024-12-15 09:06:44', '2024-12-16 09:06:56'),
(406, 918492, '2024-12-16', 60, 76.3824, '2024-12-15 09:08:14', '2024-12-16 09:08:26'),
(407, 2266432, '2024-12-16', 80.82, 89.5992, '2024-12-15 09:10:40', '2024-12-16 09:10:53'),
(408, 688688, '2024-12-17', 27.78, 57.3582, '2024-12-16 09:06:56', '2024-12-17 09:06:37'),
(409, 918492, '2024-12-17', 65.71, 87.2395, '2024-12-16 09:08:26', '2024-12-17 09:08:02'),
(410, 2266432, '2024-12-17', 72.6, 92.9854, '2024-12-16 09:10:53', '2024-12-17 09:10:26'),
(411, 688688, '2024-12-18', 25.93, 50.6205, '2024-12-17 09:06:37', '2024-12-18 09:06:38'),
(412, 918492, '2024-12-18', 57.14, 84.7943, '2024-12-17 09:08:02', '2024-12-18 09:08:07'),
(413, 2266432, '2024-12-18', 80.82, 84.4523, '2024-12-17 09:10:26', '2024-12-18 09:10:42'),
(414, 688688, '2024-12-19', 27.78, 38.6803, '2024-12-18 09:06:38', '2024-12-19 09:06:47'),
(415, 918492, '2024-12-19', 65.71, 79.7443, '2024-12-18 09:08:07', '2024-12-19 09:08:13'),
(416, 2266432, '2024-12-19', 86.3, 86.1107, '2024-12-18 09:10:42', '2024-12-19 09:10:36'),
(417, 688688, '2024-12-20', 33.33, 52.4837, '2024-12-19 09:06:47', '2024-12-20 09:06:46'),
(418, 918492, '2024-12-20', 77.14, 85.0294, '2024-12-19 09:08:13', '2024-12-20 09:08:13'),
(419, 2266432, '2024-12-20', 98.63, 92.6015, '2024-12-19 09:10:36', '2024-12-20 09:10:48'),
(420, 688688, '2024-12-21', 48.15, 59.14, '2024-12-20 09:06:46', '2024-12-21 09:06:41'),
(421, 918492, '2024-12-21', 97.14, 81.7149, '2024-12-20 09:08:13', '2024-12-21 09:08:03'),
(422, 2266432, '2024-12-21', 100, 95.8, '2024-12-20 09:10:48', '2024-12-21 09:10:17'),
(423, 688688, '2024-12-22', 40.74, 19.6519, '2024-12-21 09:06:41', '2024-12-22 09:06:34'),
(424, 918492, '2024-12-22', 68.57, 71.256, '2024-12-21 09:08:03', '2024-12-22 09:07:55'),
(425, 2266432, '2024-12-22', 82.19, 85.4863, '2024-12-21 09:10:17', '2024-12-22 09:10:12'),
(426, 688688, '2024-12-23', 33.33, 34.5236, '2024-12-22 09:06:34', '2024-12-23 09:06:32'),
(427, 918492, '2024-12-23', 60, 72.3086, '2024-12-22 09:07:55', '2024-12-23 09:08:04'),
(428, 2266432, '2024-12-23', 86.3, 84.6314, '2024-12-22 09:10:12', '2024-12-23 09:10:32'),
(429, 688688, '2024-12-24', 48.15, 46.409, '2024-12-23 09:06:32', '2024-12-24 09:06:45'),
(430, 918492, '2024-12-24', 82.86, 80.423, '2024-12-23 09:08:04', '2024-12-24 09:08:12'),
(431, 2266432, '2024-12-24', 97.26, 91.2408, '2024-12-23 09:10:32', '2024-12-24 09:10:43'),
(432, 688688, '2024-12-25', 62.96, 58.9378, '2024-12-24 09:06:45', '2024-12-25 09:06:38'),
(433, 918492, '2024-12-25', 100, 84.7742, '2024-12-24 09:08:12', '2024-12-25 09:08:04'),
(434, 2266432, '2024-12-25', 94.52, 94.8404, '2024-12-24 09:10:43', '2024-12-25 09:10:22'),
(435, 688688, '2024-12-26', 90.74, 55.3622, '2024-12-25 09:06:38', '2024-12-26 09:06:42'),
(436, 918492, '2024-12-26', 105.71, 92.9958, '2024-12-25 09:08:04', '2024-12-26 09:08:16'),
(437, 2266432, '2024-12-26', 100, 92.3167, '2024-12-25 09:10:22', '2024-12-26 09:10:51'),
(438, 688688, '2024-12-27', 100, 85.1342, '2024-12-26 09:06:42', '2024-12-27 09:06:45'),
(439, 918492, '2024-12-27', 105.71, 103.577, '2024-12-26 09:08:16', '2024-12-27 09:08:09'),
(440, 2266432, '2024-12-27', 100, 99.3436, '2024-12-26 09:10:51', '2024-12-27 09:10:47'),
(441, 688688, '2024-12-28', 100, 101.382, '2024-12-27 09:06:45', '2024-12-28 09:06:45'),
(442, 918492, '2024-12-28', 105.71, 101.271, '2024-12-27 09:08:09', '2024-12-28 09:08:11'),
(443, 2266432, '2024-12-28', 100, 96.7508, '2024-12-27 09:10:47', '2024-12-28 09:10:22'),
(444, 688688, '2024-12-29', 100, 66.5317, '2024-12-28 09:06:45', '2024-12-29 09:06:38'),
(445, 918492, '2024-12-29', 100, 84.2149, '2024-12-28 09:08:11', '2024-12-29 09:07:51'),
(446, 2266432, '2024-12-29', 94.52, 85.0339, '2024-12-28 09:10:22', '2024-12-29 09:10:16'),
(447, 688688, '2024-12-30', 100, 81.3551, '2024-12-29 09:06:38', '2024-12-30 09:06:37'),
(448, 918492, '2024-12-30', 105.71, 84.872, '2024-12-29 09:07:51', '2024-12-30 09:08:07'),
(449, 2266432, '2024-12-30', 100, 90.6011, '2024-12-29 09:10:16', '2024-12-30 09:10:28'),
(450, 688688, '2024-12-31', 100, 100.15, '2024-12-30 09:06:37', '2024-12-31 09:06:44'),
(451, 918492, '2024-12-31', 105.71, 103.682, '2024-12-30 09:08:07', '2024-12-31 09:08:00'),
(452, 2266432, '2024-12-31', 100, 100.197, '2024-12-30 09:10:28', '2024-12-31 09:10:22'),
(453, 688688, '2025-01-01', 94.44, 102.813, '2024-12-31 09:06:44', '2025-01-01 09:06:36'),
(454, 918492, '2025-01-01', 102.86, 101.154, '2024-12-31 09:08:00', '2025-01-01 09:07:42'),
(455, 2266432, '2025-01-01', 98.63, 98.3201, '2024-12-31 09:10:22', '2025-01-01 09:10:17'),
(456, 688688, '2025-01-02', 85.19, 92.3279, '2025-01-01 09:06:36', '2025-01-02 09:06:38'),
(457, 918492, '2025-01-02', 105.71, 103.822, '2025-01-01 09:07:42', '2025-01-02 09:07:59'),
(458, 2266432, '2025-01-02', 100, 96.2452, '2025-01-01 09:10:17', '2025-01-02 09:10:22'),
(459, 688688, '2025-01-03', 94.44, 99.5981, '2025-01-02 09:06:38', '2025-01-03 09:06:41'),
(460, 918492, '2025-01-03', 105.71, 109.433, '2025-01-02 09:07:59', '2025-01-03 09:08:08'),
(461, 2266432, '2025-01-03', 100, 101.018, '2025-01-02 09:10:22', '2025-01-03 09:10:39'),
(462, 688688, '2025-01-04', 94.44, 100.044, '2025-01-03 09:06:41', '2025-01-04 09:06:30'),
(463, 918492, '2025-01-04', 105.71, 101.398, '2025-01-03 09:08:08', '2025-01-04 09:07:58'),
(464, 2266432, '2025-01-04', 100, 98.8478, '2025-01-03 09:10:39', '2025-01-04 09:10:25'),
(465, 688688, '2025-01-05', 59.26, 71.0553, '2025-01-04 09:06:30', '2025-01-05 09:06:39'),
(466, 918492, '2025-01-05', 74.29, 88.3356, '2025-01-04 09:07:58', '2025-01-05 09:07:59'),
(467, 2266432, '2025-01-05', 84.93, 88.0691, '2025-01-04 09:10:25', '2025-01-05 09:10:33'),
(468, 688688, '2025-01-06', 50, 61.8772, '2025-01-05 09:06:39', '2025-01-06 09:06:42'),
(469, 918492, '2025-01-06', 48.57, 78.7054, '2025-01-05 09:07:59', '2025-01-06 09:08:01'),
(470, 2266432, '2025-01-06', 83.56, 88.2435, '2025-01-05 09:10:33', '2025-01-06 09:10:24'),
(471, 688688, '2025-01-07', 53.7, 70.0208, '2025-01-06 09:06:42', '2025-01-07 09:06:41'),
(472, 918492, '2025-01-07', 80, 81.3072, '2025-01-06 09:08:01', '2025-01-07 09:08:02'),
(473, 2266432, '2025-01-07', 80.82, 92.5515, '2025-01-06 09:10:24', '2025-01-07 09:10:28'),
(474, 688688, '2025-01-08', 29.63, 70.7082, '2025-01-07 09:06:41', '2025-01-08 09:06:35'),
(475, 918492, '2025-01-08', 68.57, 87.1066, '2025-01-07 09:08:02', '2025-01-08 09:07:55'),
(476, 2266432, '2025-01-08', 80.82, 88.37, '2025-01-07 09:10:28', '2025-01-08 09:10:30'),
(477, 688688, '2025-01-09', 38.89, 46.5089, '2025-01-08 09:06:35', '2025-01-09 09:06:31'),
(478, 918492, '2025-01-09', 74.29, 81.314, '2025-01-08 09:07:55', '2025-01-09 09:07:53'),
(479, 2266432, '2025-01-09', 56.16, 87.8009, '2025-01-08 09:10:30', '2025-01-09 09:10:09'),
(480, 688688, '2025-01-10', 35.19, 59.6194, '2025-01-09 09:06:31', '2025-01-10 09:06:35'),
(481, 918492, '2025-01-10', 105.71, 91.3283, '2025-01-09 09:07:53', '2025-01-10 09:08:36'),
(482, 2266432, '2025-01-10', 80.82, 78.6661, '2025-01-09 09:10:09', '2025-01-10 09:10:49'),
(483, 688688, '2025-01-11', 38.89, 58.3609, '2025-01-10 09:06:35', '2025-01-11 09:06:38'),
(484, 918492, '2025-01-11', 88.57, 94.1171, '2025-01-10 09:08:36', '2025-01-11 09:07:55'),
(485, 2266432, '2025-01-11', 100, 87.1091, '2025-01-10 09:10:49', '2025-01-11 09:10:10'),
(486, 688688, '2025-01-12', 31.48, 28.0754, '2025-01-11 09:06:38', '2025-01-12 09:07:14'),
(487, 918492, '2025-01-12', 57.14, 75.0133, '2025-01-11 09:07:55', '2025-01-12 09:08:33'),
(488, 2266432, '2025-01-12', 63.01, 84.515, '2025-01-11 09:10:10', '2025-01-12 09:10:46'),
(489, 688688, '2025-01-13', 33.33, 36.4747, '2025-01-12 09:07:14', '2025-01-13 09:06:33'),
(490, 918492, '2025-01-13', 62.86, 64.4296, '2025-01-12 09:08:33', '2025-01-13 09:07:52'),
(491, 2266432, '2025-01-13', 69.86, 73.1828, '2025-01-12 09:10:46', '2025-01-13 09:10:10'),
(492, 688688, '2025-01-14', 44.44, 47.4296, '2025-01-13 09:06:33', '2025-01-14 09:06:48'),
(493, 918492, '2025-01-14', 71.43, 80.1916, '2025-01-13 09:07:52', '2025-01-14 09:08:14'),
(494, 2266432, '2025-01-14', 76.71, 78.8111, '2025-01-13 09:10:10', '2025-01-14 09:10:37'),
(495, 688688, '2025-01-15', 38.89, 47.4666, '2025-01-14 09:06:48', '2025-01-15 09:06:40'),
(496, 918492, '2025-01-15', 65.71, 79.1188, '2025-01-14 09:08:14', '2025-01-15 09:08:07'),
(497, 2266432, '2025-01-15', 76.71, 78.4074, '2025-01-14 09:10:37', '2025-01-15 09:10:30'),
(498, 688688, '2025-01-16', 40.74, 44.1056, '2025-01-15 09:06:40', '2025-01-16 09:06:40'),
(499, 918492, '2025-01-16', 65.71, 79.0269, '2025-01-15 09:08:07', '2025-01-16 09:08:21'),
(500, 2266432, '2025-01-16', 75.34, 76.4094, '2025-01-15 09:10:31', '2025-01-16 09:10:55'),
(501, 688688, '2025-01-17', 35.19, 53.0875, '2025-01-16 09:06:40', '2025-01-17 09:06:51'),
(502, 918492, '2025-01-17', 105.71, 87.2091, '2025-01-16 09:08:21', '2025-01-17 09:08:08'),
(503, 2266432, '2025-01-17', 100, 87.1155, '2025-01-16 09:10:55', '2025-01-17 09:10:30'),
(504, 688688, '2025-01-18', 44.44, 56.803, '2025-01-17 09:06:51', '2025-01-18 09:06:47'),
(505, 918492, '2025-01-18', 97.14, 93.5381, '2025-01-17 09:08:08', '2025-01-18 09:08:05'),
(506, 2266432, '2025-01-18', 100, 94.9582, '2025-01-17 09:10:30', '2025-01-18 09:10:27'),
(507, 688688, '2025-01-19', 22.22, 29.6976, '2025-01-18 09:06:47', '2025-01-19 09:06:43'),
(508, 918492, '2025-01-19', 65.71, 74.5237, '2025-01-18 09:08:05', '2025-01-19 09:08:12'),
(509, 2266432, '2025-01-19', 68.49, 83.9827, '2025-01-18 09:10:27', '2025-01-19 09:10:33'),
(510, 688688, '2025-01-20', 42.59, 30.2162, '2025-01-19 09:06:44', '2025-01-20 09:06:38'),
(511, 918492, '2025-01-20', 48.57, 68.619, '2025-01-19 09:08:12', '2025-01-20 09:07:53'),
(512, 2266432, '2025-01-20', 61.64, 75.1857, '2025-01-19 09:10:33', '2025-01-20 09:10:22'),
(513, 688688, '2025-01-21', 35.19, 54.7081, '2025-01-20 09:06:38', '2025-01-21 09:06:32'),
(514, 918492, '2025-01-21', 40, 71.198, '2025-01-20 09:07:53', '2025-01-21 09:08:13'),
(515, 2266432, '2025-01-21', 73.97, 75.2891, '2025-01-20 09:10:22', '2025-01-21 09:10:24'),
(516, 688688, '2025-01-22', 31.48, 44.3882, '2025-01-21 09:06:32', '2025-01-22 09:06:42'),
(517, 918492, '2025-01-22', 51.43, 65.2879, '2025-01-21 09:08:13', '2025-01-22 09:08:02'),
(518, 2266432, '2025-01-22', 83.56, 77.2219, '2025-01-21 09:10:24', '2025-01-22 09:10:28'),
(519, 688688, '2025-01-23', 35.19, 45.0852, '2025-01-22 09:06:42', '2025-01-23 09:06:41'),
(520, 918492, '2025-01-23', 48.57, 67.2749, '2025-01-22 09:08:02', '2025-01-23 09:08:06'),
(521, 2266432, '2025-01-23', 89.04, 81.8914, '2025-01-22 09:10:28', '2025-01-23 09:10:33'),
(522, 688688, '2025-01-24', 50, 52.93, '2025-01-23 09:06:41', '2025-01-24 09:06:38'),
(523, 918492, '2025-01-24', 94.29, 80.23, '2025-01-23 09:08:06', '2025-01-24 09:08:02'),
(524, 2266432, '2025-01-24', 97.26, 96.0701, '2025-01-23 09:10:33', '2025-01-24 09:10:06'),
(525, 688688, '2025-01-25', 100, 63.7054, '2025-01-24 09:06:38', '2025-01-25 09:06:34'),
(526, 918492, '2025-01-25', 105.71, 88.3655, '2025-01-24 09:08:02', '2025-01-25 09:07:59'),
(527, 2266432, '2025-01-25', 100, 95.383, '2025-01-24 09:10:06', '2025-01-25 09:10:25'),
(528, 688688, '2025-01-26', 64.81, 58.8832, '2025-01-25 09:06:34', '2025-01-26 09:06:35'),
(529, 918492, '2025-01-26', 102.86, 74.7981, '2025-01-25 09:07:59', '2025-01-26 09:07:53'),
(530, 2266432, '2025-01-26', 100, 81.8424, '2025-01-25 09:10:25', '2025-01-26 09:10:20'),
(531, 688688, '2025-01-27', 29.63, 57.1745, '2025-01-26 09:06:35', '2025-01-27 09:07:00'),
(532, 918492, '2025-01-27', 51.43, 79.2965, '2025-01-26 09:07:53', '2025-01-27 09:08:20'),
(533, 2266432, '2025-01-27', 95.89, 87.8497, '2025-01-26 09:10:20', '2025-01-27 09:10:50'),
(534, 688688, '2025-01-28', 38.89, 54.672, '2025-01-27 09:07:00', '2025-01-28 09:06:48'),
(535, 918492, '2025-01-28', 80, 62.2946, '2025-01-27 09:08:20', '2025-01-28 09:08:01'),
(536, 2266432, '2025-01-28', 87.67, 93.3388, '2025-01-27 09:10:50', '2025-01-28 09:10:28'),
(537, 688688, '2025-01-29', 35.19, 51.0483, '2025-01-28 09:06:48', '2025-01-29 09:06:43'),
(538, 918492, '2025-01-29', 91.43, 81.1204, '2025-01-28 09:08:01', '2025-01-29 09:08:00'),
(539, 2266432, '2025-01-29', 97.26, 87.3148, '2025-01-28 09:10:28', '2025-01-29 09:10:24'),
(540, 688688, '2025-01-30', 59.26, 46.1216, '2025-01-29 09:06:43', '2025-01-30 09:06:34'),
(541, 918492, '2025-01-30', 100, 83.478, '2025-01-29 09:08:00', '2025-01-30 09:08:00'),
(542, 2266432, '2025-01-30', 95.89, 90.6811, '2025-01-29 09:10:24', '2025-01-30 09:10:16'),
(543, 688688, '2025-01-31', 100, 67.6164, '2025-01-30 09:06:34', '2025-01-31 09:06:45'),
(544, 918492, '2025-01-31', 105.71, 112.759, '2025-01-30 09:08:00', '2025-01-31 09:07:54'),
(545, 2266432, '2025-01-31', 97.26, 98.705, '2025-01-30 09:10:16', '2025-01-31 09:10:12'),
(546, 688688, '2025-02-01', 100, 102.295, '2025-01-31 09:06:45', '2025-02-01 09:06:35'),
(547, 918492, '2025-02-01', 105.71, 107.64, '2025-01-31 09:07:54', '2025-02-01 09:08:02'),
(548, 2266432, '2025-02-01', 100, 98.4837, '2025-01-31 09:10:12', '2025-02-01 09:10:28'),
(549, 688688, '2025-02-02', 22.22, 73.8223, '2025-02-01 09:06:35', '2025-02-02 09:06:41'),
(550, 918492, '2025-02-02', 74.29, 89.84, '2025-02-01 09:08:02', '2025-02-02 09:08:05'),
(551, 2266432, '2025-02-02', 75.34, 87.4548, '2025-02-01 09:10:28', '2025-02-02 09:10:17'),
(552, 688688, '2025-02-03', 33.33, 36.2421, '2025-02-02 09:06:41', '2025-02-03 09:06:45'),
(553, 918492, '2025-02-03', 71.43, 70.6484, '2025-02-02 09:08:05', '2025-02-03 09:08:04'),
(554, 2266432, '2025-02-03', 90.41, 78.8558, '2025-02-02 09:10:17', '2025-02-03 09:10:30'),
(555, 688688, '2025-02-04', 37.04, 55.5474, '2025-02-03 09:06:45', '2025-02-04 09:06:33'),
(556, 918492, '2025-02-04', 80, 78.7119, '2025-02-03 09:08:04', '2025-02-04 09:07:55'),
(557, 2266432, '2025-02-04', 97.26, 92.5693, '2025-02-03 09:10:30', '2025-02-04 09:10:23'),
(558, 688688, '2025-02-05', 38.89, 40.7663, '2025-02-04 09:06:33', '2025-02-05 09:06:39'),
(559, 918492, '2025-02-05', 85.71, 80.345, '2025-02-04 09:07:56', '2025-02-05 09:08:02'),
(560, 2266432, '2025-02-05', 97.26, 94.1458, '2025-02-04 09:10:23', '2025-02-05 09:10:29'),
(561, 688688, '2025-02-06', 40.74, 46.3105, '2025-02-05 09:06:39', '2025-02-06 09:06:34'),
(562, 918492, '2025-02-06', 71.43, 88.9784, '2025-02-05 09:08:02', '2025-02-06 09:08:01'),
(563, 2266432, '2025-02-06', 93.15, 91.9707, '2025-02-05 09:10:29', '2025-02-06 09:10:36'),
(564, 688688, '2025-02-07', 85.19, 57.6947, '2025-02-06 09:06:34', '2025-02-07 09:06:39'),
(565, 918492, '2025-02-07', 91.43, 95.1453, '2025-02-06 09:08:01', '2025-02-07 09:08:03'),
(566, 2266432, '2025-02-07', 97.26, 96.7547, '2025-02-06 09:10:36', '2025-02-07 09:10:22'),
(567, 688688, '2025-02-08', 100, 91.3652, '2025-02-07 09:06:40', '2025-02-08 09:06:35'),
(568, 918492, '2025-02-08', 102.86, 102.395, '2025-02-07 09:08:03', '2025-02-08 09:07:58'),
(569, 2266432, '2025-02-08', 100, 99.0381, '2025-02-07 09:10:22', '2025-02-08 09:10:18'),
(570, 688688, '2025-02-09', 53.7, 57.8076, '2025-02-08 09:06:35', '2025-02-09 09:06:44'),
(571, 918492, '2025-02-09', 85.71, 79.4018, '2025-02-08 09:07:58', '2025-02-09 09:08:09'),
(572, 2266432, '2025-02-09', 94.52, 84.4877, '2025-02-08 09:10:18', '2025-02-09 09:10:35'),
(573, 688688, '2025-02-10', 62.96, 52.2697, '2025-02-09 09:06:44', '2025-02-10 09:06:50'),
(574, 918492, '2025-02-10', 105.71, 75.2643, '2025-02-09 09:08:09', '2025-02-10 09:08:05'),
(575, 2266432, '2025-02-10', 97.26, 90.8685, '2025-02-09 09:10:35', '2025-02-10 09:10:40'),
(576, 688688, '2025-02-11', 75.93, 67.2209, '2025-02-10 09:06:50', '2025-02-11 09:06:38'),
(577, 918492, '2025-02-11', 105.71, 91.6242, '2025-02-10 09:08:05', '2025-02-11 09:07:46'),
(578, 2266432, '2025-02-11', 97.26, 96.7979, '2025-02-10 09:10:40', '2025-02-11 09:10:17'),
(579, 688688, '2025-02-12', 100, 69.6127, '2025-02-11 09:06:39', '2025-02-12 09:06:41'),
(580, 918492, '2025-02-12', 105.71, 93.8375, '2025-02-11 09:07:46', '2025-02-12 09:08:00'),
(581, 2266432, '2025-02-12', 97.26, 95.8538, '2025-02-11 09:10:17', '2025-02-12 09:10:32'),
(582, 688688, '2025-02-13', 74.07, 87.0655, '2025-02-12 09:06:41', '2025-02-13 09:06:43'),
(583, 918492, '2025-02-13', 105.71, 96.8682, '2025-02-12 09:08:00', '2025-02-13 09:08:11'),
(584, 2266432, '2025-02-13', 97.26, 93.7041, '2025-02-12 09:10:32', '2025-02-13 09:10:42'),
(585, 688688, '2025-02-14', 85.19, 91.7091, '2025-02-13 09:06:43', '2025-02-14 09:06:41'),
(586, 918492, '2025-02-14', 105.71, 111.681, '2025-02-13 09:08:11', '2025-02-14 09:07:59'),
(587, 2266432, '2025-02-14', 100, 101.083, '2025-02-13 09:10:42', '2025-02-14 09:10:06'),
(588, 688688, '2025-02-15', 100, 102.66, '2025-02-14 09:06:41', '2025-02-15 09:06:35'),
(589, 918492, '2025-02-15', 105.71, 110.577, '2025-02-14 09:07:59', '2025-02-15 09:07:56'),
(590, 2266432, '2025-02-15', 100, 101.344, '2025-02-14 09:10:06', '2025-02-15 09:10:29'),
(591, 688688, '2025-02-16', 55.56, 68.7177, '2025-02-15 09:06:35', '2025-02-16 09:06:25'),
(592, 918492, '2025-02-16', 91.43, 87.9131, '2025-02-15 09:07:56', '2025-02-16 09:07:32'),
(593, 2266432, '2025-02-16', 91.78, 86.2808, '2025-02-15 09:10:29', '2025-02-16 09:10:06'),
(594, 688688, '2025-02-17', 70.37, 55.9218, '2025-02-16 09:06:25', '2025-02-17 09:06:32'),
(595, 918492, '2025-02-17', 91.43, 84.9906, '2025-02-16 09:07:32', '2025-02-17 09:07:57'),
(596, 2266432, '2025-02-17', 97.26, 90.8545, '2025-02-16 09:10:07', '2025-02-17 09:10:25'),
(597, 688688, '2025-02-18', 77.78, 77.0506, '2025-02-17 09:06:32', '2025-02-18 09:06:42'),
(598, 918492, '2025-02-18', 105.71, 92.7836, '2025-02-17 09:07:57', '2025-02-18 09:08:01'),
(599, 2266432, '2025-02-18', 97.26, 97.1501, '2025-02-17 09:10:25', '2025-02-18 09:10:31'),
(600, 688688, '2025-02-19', 87.04, 75.1312, '2025-02-18 09:06:42', '2025-02-19 09:06:42'),
(601, 918492, '2025-02-19', 105.71, 96.237, '2025-02-18 09:08:02', '2025-02-19 09:08:10');
INSERT INTO `t_ai_health` (`id`, `hotel_id`, `occupancy_date`, `actual_occupancy`, `forecast_occupancy`, `created_at`, `updated_at`) VALUES
(602, 2266432, '2025-02-19', 95.89, 96.0694, '2025-02-18 09:10:31', '2025-02-19 09:10:05'),
(603, 688688, '2025-02-20', 90.74, 83.8036, '2025-02-19 09:06:42', '2025-02-20 09:06:33'),
(604, 918492, '2025-02-20', 102.86, 99.443, '2025-02-19 09:08:10', '2025-02-20 09:07:54'),
(605, 2266432, '2025-02-20', 97.26, 93.8293, '2025-02-19 09:10:05', '2025-02-20 09:09:57'),
(606, 688688, '2025-02-21', 87.04, 101.449, '2025-02-20 09:06:33', '2025-02-21 09:06:29'),
(607, 918492, '2025-02-21', 105.71, 109.359, '2025-02-20 09:07:54', '2025-02-21 09:07:52'),
(608, 2266432, '2025-02-21', 95.89, 101.758, '2025-02-20 09:09:57', '2025-02-21 09:10:08'),
(609, 688688, '2025-02-22', 100, 101.914, '2025-02-21 09:06:29', '2025-02-22 09:06:42'),
(610, 918492, '2025-02-22', 105.71, 108.446, '2025-02-21 09:07:52', '2025-02-22 09:08:05'),
(611, 2266432, '2025-02-22', 100, 99.517, '2025-02-21 09:10:08', '2025-02-22 09:10:22'),
(612, 688688, '2025-02-23', 59.26, 71.4085, '2025-02-22 09:06:42', '2025-02-23 09:06:47'),
(613, 918492, '2025-02-23', 88.57, 87.9078, '2025-02-22 09:08:05', '2025-02-23 09:08:09'),
(614, 2266432, '2025-02-23', 91.78, 87.3129, '2025-02-22 09:10:22', '2025-02-23 09:10:47'),
(615, 688688, '2025-02-24', 70.37, 60.9012, '2025-02-23 09:06:47', '2025-02-24 09:06:43'),
(616, 918492, '2025-02-24', 105.71, 82.2142, '2025-02-23 09:08:09', '2025-02-24 09:08:05'),
(617, 2266432, '2025-02-24', 94.52, 91.278, '2025-02-23 09:10:47', '2025-02-24 09:10:25'),
(618, 688688, '2025-02-25', 72.22, 79.1337, '2025-02-24 09:06:43', '2025-02-25 09:06:41'),
(619, 918492, '2025-02-25', 105.71, 103.022, '2025-02-24 09:08:05', '2025-02-25 09:08:13'),
(620, 2266432, '2025-02-25', 97.26, 96.3223, '2025-02-24 09:10:25', '2025-02-25 09:10:38'),
(621, 688688, '2025-02-26', 59.26, 75.1659, '2025-02-25 09:06:41', '2025-02-26 09:06:41'),
(622, 918492, '2025-02-26', 105.71, 97.9391, '2025-02-25 09:08:13', '2025-02-26 09:07:56'),
(623, 2266432, '2025-02-26', 97.26, 96.1882, '2025-02-25 09:10:38', '2025-02-26 09:10:26'),
(624, 688688, '2025-02-27', 72.22, 68.1247, '2025-02-26 09:06:41', '2025-02-27 09:06:43'),
(625, 918492, '2025-02-27', 105.71, 101.19, '2025-02-26 09:07:56', '2025-02-27 09:07:59'),
(626, 2266432, '2025-02-27', 97.26, 94.0485, '2025-02-26 09:10:26', '2025-02-27 09:10:17'),
(627, 688688, '2025-02-28', 100, 84.8514, '2025-02-27 09:06:43', '2025-02-28 09:06:39'),
(628, 918492, '2025-02-28', 105.71, 109.601, '2025-02-27 09:07:59', '2025-02-28 09:08:09'),
(629, 2266432, '2025-02-28', 100, 100.756, '2025-02-27 09:10:17', '2025-02-28 09:10:34'),
(630, 688688, '2025-03-01', 0, 101.897, '2025-02-28 09:06:39', '2025-02-28 09:06:39'),
(631, 918492, '2025-03-01', 0, 106.994, '2025-02-28 09:08:09', '2025-02-28 09:08:09'),
(632, 2266432, '2025-03-01', 0, 101.336, '2025-02-28 09:10:34', '2025-02-28 09:10:34'),
(633, 688688, '2025-03-04', 92.59, 95.3978, '2025-03-04 05:43:54', '2025-03-05 04:39:58'),
(634, 918492, '2025-03-04', 102.86, 103.436, '2025-03-04 05:45:00', '2025-03-05 04:40:56'),
(635, 2266432, '2025-03-04', 94.52, 96.6804, '2025-03-04 05:47:16', '2025-03-05 04:42:53'),
(636, 688688, '2025-03-05', 0, 84.5425, '2025-03-05 04:39:58', '2025-03-05 04:39:58'),
(637, 918492, '2025-03-05', 0, 98.9899, '2025-03-05 04:40:56', '2025-03-05 04:40:56'),
(638, 2266432, '2025-03-05', 0, 93.7686, '2025-03-05 04:42:53', '2025-03-05 04:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `complains`
--
ALTER TABLE `complains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complain_categories`
--
ALTER TABLE `complain_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complain_feedback`
--
ALTER TABLE `complain_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complain_replies`
--
ALTER TABLE `complain_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tbl_complain_category`
--
ALTER TABLE `tbl_complain_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `un` (`complaint_id`,`complaint_category`);

--
-- Indexes for table `t_ai_health`
--
ALTER TABLE `t_ai_health`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `indx` (`occupancy_date`,`hotel_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complains`
--
ALTER TABLE `complains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `complain_categories`
--
ALTER TABLE `complain_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `complain_feedback`
--
ALTER TABLE `complain_feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complain_replies`
--
ALTER TABLE `complain_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_complain_category`
--
ALTER TABLE `tbl_complain_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18064;

--
-- AUTO_INCREMENT for table `t_ai_health`
--
ALTER TABLE `t_ai_health`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=639;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
