-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2025 at 11:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_donation`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` enum('male','female','other','prefer-not-to-say') NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `blood_type` enum('A+','A-','B+','B-','AB+','AB-','O+','O-','unknown') DEFAULT NULL,
  `previous_donor` enum('yes','no') NOT NULL,
  `last_donation_date` date DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `donation_center` varchar(100) NOT NULL,
  `appointment_date` date NOT NULL,
  `selected_time` time NOT NULL,
  `donation_type` enum('whole','plasma','platelets','double-red') NOT NULL,
  `health_issues` text DEFAULT NULL,
  `medications` text DEFAULT NULL,
  `consent` tinyint(1) NOT NULL DEFAULT 1,
  `privacy_consent` tinyint(1) NOT NULL DEFAULT 1,
  `communication_consent` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `first_name`, `last_name`, `date_of_birth`, `gender`, `email`, `phone`, `pincode`, `blood_type`, `previous_donor`, `last_donation_date`, `weight`, `donation_center`, `appointment_date`, `selected_time`, `donation_type`, `health_issues`, `medications`, `consent`, `privacy_consent`, `communication_consent`, `created_at`) VALUES
(2, 'Pranavi', 'Aluguri', '2005-05-21', 'female', 'hrushikeshnarala37@gmail.com', '9441315251', '999999', 'A+', 'yes', '2024-05-21', 172, 'huzarabad', '2025-02-22', '09:00:00', 'whole', NULL, 'cocaine', 1, 1, 0, '2025-02-20 17:40:51'),
(3, 'iodhfdsoi', 'sdfsdfg', '2002-07-21', 'male', 'ajaynedhuru@gmail.com', '12345678', '999999', 'A+', 'yes', '2020-05-21', 164, 'huzarabad', '2025-09-22', '09:00:00', 'whole', NULL, 'ketamine ', 1, 1, 0, '2025-02-20 18:21:03'),
(4, 'h bjnm,', 'h jnkml,', '2000-03-04', 'female', 'hrushikeshnarala37@gmail.com', '567876543', '999999', 'A-', 'no', '0000-00-00', 89, 'kits-singapur', '2020-06-05', '15:00:00', 'whole', NULL, 'fcgvhbjn', 1, 1, 0, '2025-02-20 21:18:27'),
(5, 'sita', 'ramu', '2000-05-21', 'female', 'hrushikeshnarala37@gmail.com', '456797654', '999999', 'A-', 'yes', '2020-02-21', 65, 'huzarabad', '2025-02-22', '09:00:00', 'whole', NULL, 'vbnmmnb', 1, 1, 0, '2025-02-21 04:28:56'),
(6, 'Pranavi', 'Aluguri', '2000-05-21', 'female', 'hrushikeshnarala37@gmail.com', '9441315251', '999999', 'A-', 'yes', '2020-05-21', 173, 'huzarabad', '2025-02-22', '09:00:00', 'whole', NULL, 'hrushikesh', 1, 1, 0, '2025-02-21 04:50:10'),
(7, 'iodhfdsoi', 'sdfsdfg', '2000-05-21', 'female', 'hrushikeshnarala37@gmail.com', '9441315251', '999999', 'AB-', 'no', '0000-00-00', 230, 'huzarabad', '2025-02-23', '14:00:00', 'whole', NULL, 'ghjklkjhgf', 1, 1, 0, '2025-02-21 05:16:05'),
(8, 'kldf', 'js,mdgs,d', '2000-05-21', 'male', 'bunnynarala1995@gmail.com', '9441315251', '505307', 'AB-', 'no', '0000-00-00', 175, 'karimnagar-govt', '2025-02-28', '11:00:00', 'plasma', NULL, 'dfxgchvjbkn', 1, 1, 0, '2025-02-21 14:59:25'),
(9, 'Rahul', 'Sharma', '1985-05-12', 'male', 'rahul.sharma@example.com', '9876543210', '999999', 'A+', 'yes', '2024-01-10', 75, 'Downtown Center', '2025-03-05', '10:00:00', '', NULL, NULL, 1, 1, 0, '2025-02-21 16:01:25'),
(10, 'Priya', 'Kapoor', '1990-08-23', 'female', 'priya.kapoor@example.com', '8765432109', '999999', 'O+', 'no', NULL, 60, 'Northside Medical Plaza', '2025-03-06', '11:00:00', '', NULL, NULL, 1, 1, 0, '2025-02-21 16:01:25'),
(11, 'Amit', 'Kumar', '1982-03-15', 'male', 'amit.kumar@example.com', '7654321098', '999999', 'B-', 'yes', '2023-12-20', 80, 'Eastside Community Hospital', '2025-03-07', '01:00:00', '', NULL, NULL, 1, 1, 0, '2025-02-21 16:01:25'),
(12, 'Sneha', 'Nair', '1995-09-25', 'female', 'sneha.nair@example.com', '6543210987', '999999', 'AB+', 'no', NULL, 55, 'Westside Blood Center', '2025-03-08', '03:00:00', '', NULL, NULL, 1, 1, 0, '2025-02-21 16:01:25'),
(13, 'Vikram', 'Singh', '1988-07-14', 'male', 'vikram.singh@example.com', '5432109876', '999999', 'A-', 'yes', '2024-02-05', 78, 'Mobile Blood Drive', '2025-03-09', '12:00:00', '', NULL, NULL, 1, 1, 0, '2025-02-21 16:01:25'),
(14, 'Rahul', 'Sharma', '1990-05-12', 'male', 'rahul.sharma@example.com', '9876543210', '110001', 'A+', 'yes', '2024-01-10', 75, 'Red Cross Center', '2025-03-05', '10:00:00', 'whole', NULL, NULL, 1, 1, 0, '2025-02-21 16:05:24'),
(15, 'Priya', 'Kapoor', '1985-08-22', 'female', 'priya.kapoor@example.com', '8765432109', '400001', 'O+', 'no', NULL, 65, 'Apollo Hospital', '2025-03-10', '09:00:00', 'plasma', NULL, NULL, 1, 1, 0, '2025-02-21 16:05:24'),
(16, 'Amit', 'Kumar', '1992-11-15', 'male', 'amit.kumar@example.com', '7654321098', '110029', 'B-', 'yes', '2023-12-15', 80, 'AIIMS', '2025-03-15', '11:00:00', 'whole', NULL, NULL, 1, 1, 0, '2025-02-21 16:05:24'),
(17, 'Sneha', 'Nair', '1995-03-30', 'female', 'sneha.nair@example.com', '6543210987', '600001', 'AB+', 'no', NULL, 55, 'CMC Vellore', '2025-03-20', '12:30:00', 'plasma', NULL, NULL, 1, 1, 0, '2025-02-21 16:05:24'),
(18, 'Vikram', 'Singh', '1988-07-18', 'male', 'vikram.singh@example.com', '5432109876', '122001', 'A-', 'yes', '2023-11-05', 78, 'Max Hospital', '2025-03-25', '02:00:00', 'platelets', NULL, NULL, 1, 1, 0, '2025-02-21 16:05:24'),
(19, 'Ananya', 'Roy', '1987-09-25', 'female', 'ananya.roy@example.com', '4321098765', '400052', 'O-', 'yes', '2023-10-10', 68, 'Kokilaben Hospital', '2025-03-30', '09:30:00', 'whole', NULL, NULL, 1, 1, 0, '2025-02-21 16:05:24'),
(20, 'Manoj', 'Pillai', '1991-02-10', 'male', 'manoj.pillai@example.com', '3210987654', '201301', 'B+', 'no', NULL, 82, 'Medanta', '2025-04-05', '10:45:00', '', NULL, NULL, 1, 1, 0, '2025-02-21 16:05:24'),
(21, 'Ritu', 'Joshi', '1979-06-05', 'female', 'ritu.joshi@example.com', '2109876543', '560001', 'AB-', 'yes', '2023-12-25', 60, 'Manipal Hospital', '2025-04-10', '11:15:00', 'plasma', NULL, NULL, 1, 1, 0, '2025-02-21 16:05:24'),
(22, 'Karan', 'Patel', '1993-04-12', 'male', 'karan.patel@example.com', '1098765432', '400026', 'A+', 'no', NULL, 75, 'Hinduja Hospital', '2025-04-15', '01:00:00', 'whole', NULL, NULL, 1, 1, 0, '2025-02-21 16:05:24'),
(23, 'Sara', 'Khan', '1984-12-08', 'female', 'sara.khan@example.com', '9988776655', '400030', 'O+', 'yes', '2023-09-18', 70, 'Jaslok Hospital', '2025-04-20', '03:00:00', 'platelets', NULL, NULL, 1, 1, 0, '2025-02-21 16:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `blood_inventory`
--

CREATE TABLE `blood_inventory` (
  `id` int(11) NOT NULL,
  `donor_id` int(11) NOT NULL,
  `blood_group` enum('A+','A-','B+','B-','O+','O-','AB+','AB-') NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `units` int(11) NOT NULL CHECK (`units` >= 1)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blood_inventory`
--

INSERT INTO `blood_inventory` (`id`, `donor_id`, `blood_group`, `pincode`, `units`) VALUES
(1, 1, 'O+', '560001', 3),
(2, 2, 'A+', '400001', 2),
(3, 3, 'B-', '110001', 1),
(4, 4, 'AB+', '500001', 4),
(5, 5, 'O-', '600001', 2),
(6, 6, 'A-', '700001', 3),
(7, 7, 'B+', '411001', 5),
(8, 8, 'O+', '380001', 1),
(9, 9, 'A+', '302001', 3),
(10, 10, 'AB-', '226001', 2),
(11, 11, 'O+', '160001', 4),
(12, 12, 'B+', '462001', 1),
(13, 13, 'A-', '452001', 2),
(14, 14, 'O-', '440001', 3),
(15, 15, 'AB+', '530001', 4),
(16, 16, 'B-', '800001', 2),
(17, 17, 'A+', '141001', 3),
(18, 18, 'O+', '282001', 5),
(19, 19, 'B+', '221001', 2),
(20, 20, 'AB-', '781001', 1),
(21, 21, 'O-', '641001', 4),
(22, 22, 'A+', '695001', 3),
(23, 23, 'B+', '834001', 2),
(24, 24, 'AB+', '248001', 1),
(25, 25, 'O-', '570001', 2),
(26, 26, 'A-', '492001', 3),
(27, 27, 'B+', '143001', 4),
(28, 28, 'O+', '208001', 5),
(29, 29, 'A+', '422001', 2),
(30, 30, 'AB-', '474001', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blood_requests`
--

CREATE TABLE `blood_requests` (
  `id` int(11) NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `patient_age` int(11) NOT NULL,
  `blood_group` enum('A+','A-','B+','B-','AB+','AB-','O+','O-') NOT NULL,
  `urgency` enum('Immediate','Within 24 hours','Within 3 days') NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blood_requests`
--

INSERT INTO `blood_requests` (`id`, `patient_name`, `patient_age`, `blood_group`, `urgency`, `hospital_name`, `location`, `contact_person`, `contact_phone`, `created_at`) VALUES
(1, 'tghn', 23, 'A+', 'Within 24 hours', 'qwertyu', ' hbjngfvhbj', 'sdfgh', '9347203424', '2025-02-21 07:02:54'),
(2, 'ramya', 19, 'A+', 'Within 24 hours', 'xrdcfgvhbj', 'ctfvgyhbunj', 'pranavi', '9347203424', '2025-02-21 07:04:00'),
(3, 'pranavi aluguri', 76, 'B+', 'Immediate', 'kims', 'kqmedm', 'rtfyguh', '9347203424', '2025-02-21 15:00:33'),
(4, 'Rahul Sharma', 45, 'A+', 'Immediate', 'Fortis Hospital', 'Delhi', 'Dr. Mehta', '9876543210', '2025-02-21 16:00:47'),
(5, 'Priya Kapoor', 34, 'O+', 'Within 24 hours', 'Apollo Hospital', 'Mumbai', 'Dr. Verma', '8765432109', '2025-02-21 16:00:47'),
(6, 'Amit Kumar', 29, 'B-', 'Within 3 days', 'AIIMS', 'Delhi', 'Nurse Rani', '7654321098', '2025-02-21 16:00:47'),
(7, 'Sneha Nair', 52, 'AB+', 'Immediate', 'CMC Vellore', 'Chennai', 'Dr. Ramesh', '6543210987', '2025-02-21 16:00:47'),
(8, 'Vikram Singh', 38, 'A-', 'Within 24 hours', 'Max Hospital', 'Pune', 'Dr. Ravi', '5432109876', '2025-02-21 16:00:47'),
(9, 'Ananya Roy', 41, 'O-', 'Immediate', 'Kokilaben Hospital', 'Mumbai', 'Dr. Desai', '4321098765', '2025-02-21 16:00:47'),
(10, 'Manoj Pillai', 33, 'B+', 'Within 3 days', 'Medanta', 'Gurgaon', 'Dr. Sharma', '3210987654', '2025-02-21 16:00:47'),
(11, 'Ritu Joshi', 60, 'AB-', 'Immediate', 'Manipal Hospital', 'Bangalore', 'Dr. Nair', '2109876543', '2025-02-21 16:00:47'),
(12, 'Karan Patel', 27, 'A+', 'Within 24 hours', 'Hinduja Hospital', 'Mumbai', 'Dr. Shah', '1098765432', '2025-02-21 16:00:47'),
(13, 'Sara Khan', 36, 'O+', 'Within 3 days', 'Jaslok Hospital', 'Mumbai', 'Dr. Sharma', '9988776655', '2025-02-21 16:00:47'),
(14, 'usha', 20, 'O+', 'Within 24 hours', 'kims', ' karimnagar', 'pranavi', '8172838457', '2025-02-22 06:20:16');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'John Doe', 'john@example.com', 'Need Blood Information', 'I need details about the nearest blood bank.', '2025-02-21 16:00:15'),
(2, 'Jane Smith', 'jane@example.com', 'Volunteer Inquiry', 'How can I volunteer at the next blood donation camp?', '2025-02-21 16:00:15'),
(3, 'Michael Brown', 'michael@example.com', 'Urgent Blood Request', 'Looking for O+ blood in my area.', '2025-02-21 16:00:15'),
(4, 'Sarah Johnson', 'sarah@example.com', 'Donation Eligibility', 'Can I donate blood if I have diabetes?', '2025-02-21 16:00:15'),
(5, 'David Lee', 'david@example.com', 'Blood Storage Query', 'How long is donated blood stored?', '2025-02-21 16:00:15'),
(6, 'Emily Wilson', 'emily@example.com', 'Feedback', 'Great initiative! Keep up the good work.', '2025-02-21 16:00:15'),
(7, 'Robert White', 'robert@example.com', 'Need Blood', 'Searching for B- blood for my relative.', '2025-02-21 16:00:15'),
(8, 'Lisa Green', 'lisa@example.com', 'Appointment Inquiry', 'Can I reschedule my donation appointment?', '2025-02-21 16:00:15'),
(9, 'James Taylor', 'james@example.com', 'Medical Conditions & Donation', 'Can I donate blood if I have a tattoo?', '2025-02-21 16:00:15'),
(10, 'Jessica Moore', 'jessica@example.com', 'Donation Camp Schedule', 'Where is the next blood camp in Mumbai?', '2025-02-21 16:00:15'),
(11, 'Daniel Harris', 'daniel@example.com', 'Blood Donation Impact', 'How many lives can one donation save?', '2025-02-21 16:00:15'),
(12, 'Nancy Thomas', 'nancy@example.com', 'Urgent Need', 'I need O- blood within 24 hours.', '2025-02-21 16:00:15'),
(13, 'Chris Martin', 'chris@example.com', 'General Inquiry', 'Can my 16-year-old son donate blood?', '2025-02-21 16:00:15'),
(14, 'Sophia Carter', 'sophia@example.com', 'Thank You', 'Thank you for organizing this donation drive!', '2025-02-21 16:00:15'),
(15, 'Andrew Scott', 'andrew@example.com', 'Location Inquiry', 'Where is the nearest blood donation center?', '2025-02-21 16:00:15'),
(16, 'Olivia Young', 'olivia@example.com', 'Medical Query', 'Can I donate if I take aspirin?', '2025-02-21 16:00:15'),
(17, 'Ethan Mitchell', 'ethan@example.com', 'Feedback', 'Excellent service at the last camp!', '2025-02-21 16:00:15'),
(18, 'Madison Walker', 'madison@example.com', 'Volunteer Sign-up', 'I want to join as a volunteer.', '2025-02-21 16:00:15'),
(19, 'Brandon King', 'brandon@example.com', 'Plasma Donation', 'How is plasma donation different from blood donation?', '2025-02-21 16:00:15'),
(20, 'Emma Hall', 'emma@example.com', 'Request for O+ Blood', 'Looking for O+ blood for surgery.', '2025-02-21 16:00:15'),
(21, 'Lucas Allen', 'lucas@example.com', 'Appointment Booking', 'How can I book an appointment online?', '2025-02-21 16:00:15'),
(22, 'Grace Adams', 'grace@example.com', 'Health Check', 'Do I need a medical test before donation?', '2025-02-21 16:00:15'),
(23, 'Benjamin Evans', 'benjamin@example.com', 'Donation Drive', 'Is there a corporate donation program?', '2025-02-21 16:00:15'),
(24, 'Sophia Wright', 'sophia@example.com', 'Urgent Help Needed', 'A friend needs blood urgently.', '2025-02-21 16:00:15'),
(27, 'Noah Sanchez', 'noah@example.com', 'Organizing a Blood Drive', 'I want to organize a drive in my area.', '2025-02-21 16:00:15'),
(28, 'Mia Rivera', 'mia@example.com', 'FAQ', 'What are the requirements for blood donation?', '2025-02-21 16:00:15'),
(29, 'Evelyn Carter', 'evelyn@example.com', 'Donation Frequency', 'How often can I donate blood?', '2025-02-21 16:00:15'),
(30, 'Daniel Gomez', 'daniel@example.com', 'First-Time Donor', 'I am donating for the first time, what should I expect?', '2025-02-21 16:00:15'),
(31, 'Narala Ravinder ', 'hrushikeshnarala37@gmail.com', 'slkandhansdasfd', 'qwertyuiolkjhgfdsazxcvbnm', '2025-02-22 04:28:52'),
(32, 'Narala Ravinder ', 'hrushikeshnarala37@gmail.com', 'slkandhansdasfd', 'qwertolkfdsazxcv,', '2025-02-22 04:31:19'),
(33, 'Narala Ravinder ', 'hrushikeshnarala37@gmail.com', 'slkandhansdasfd', 'grsfGXdcvgf', '2025-02-22 04:32:04');

-- --------------------------------------------------------

--
-- Table structure for table `donation_camps`
--

CREATE TABLE `donation_camps` (
  `id` int(11) NOT NULL,
  `camp_name` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donation_camps`
--

INSERT INTO `donation_camps` (`id`, `camp_name`, `location`, `pincode`, `date`, `time`, `contact_person`, `contact_phone`, `created_at`) VALUES
(1, 'Red Cross Camp', 'City Hospital, Mumbai', '400001', '2025-03-01', '10:00 AM - 4:00 PM', 'Dr. Sharma', '9876543210', '2025-02-21 07:19:35'),
(2, 'Blood Hope Camp', 'Community Center, Delhi', '110001', '2025-03-05', '9:00 AM - 3:00 PM', 'Ms. Kapoor', '9988776655', '2025-02-21 07:19:35'),
(3, 'Red Cross Blood Camp', 'City Hospital, Delhi', '110001', '2025-03-01', '10:00 AM - 4:00 PM', 'Dr. Mehta', '9876543210', '2025-02-21 16:01:02'),
(4, 'Blood Hope Camp', 'Community Center, Mumbai', '400001', '2025-03-05', '9:00 AM - 3:00 PM', 'Ms. Kapoor', '9988776655', '2025-02-21 16:01:02'),
(5, 'Lifeline Donation Camp', 'Apollo Hospital, Chennai', '600001', '2025-03-10', '10:00 AM - 2:00 PM', 'Dr. Nair', '9876543211', '2025-02-21 16:01:02'),
(6, 'Hope Givers Camp', 'AIIMS, Delhi', '110029', '2025-03-12', '11:00 AM - 5:00 PM', 'Dr. Verma', '8765432101', '2025-02-21 16:01:02'),
(7, 'Save Lives Camp', 'Medanta, Gurgaon', '122001', '2025-03-15', '9:00 AM - 3:00 PM', 'Dr. Sharma', '7654321099', '2025-02-21 16:01:02'),
(8, 'City Blood Drive', 'Fortis Hospital, Noida', '201301', '2025-03-18', '10:00 AM - 4:00 PM', 'Dr. Desai', '6543210988', '2025-02-21 16:01:02'),
(9, 'Healing Hands Camp', 'CMC, Vellore', '632004', '2025-03-20', '9:30 AM - 2:30 PM', 'Dr. Pillai', '5432109877', '2025-02-21 16:01:02'),
(10, 'Hope for Life Camp', 'Kokilaben Hospital, Mumbai', '400052', '2025-03-22', '12:00 PM - 5:00 PM', 'Dr. Shah', '4321098766', '2025-02-21 16:01:02'),
(11, 'Life Savers Blood Drive', 'Manipal Hospital, Bangalore', '560001', '2025-03-25', '10:00 AM - 3:00 PM', 'Dr. Rao', '3210987655', '2025-02-21 16:01:02'),
(12, 'Humanity First Camp', 'Jaslok Hospital, Mumbai', '400026', '2025-03-28', '11:00 AM - 4:00 PM', 'Dr. Joshi', '2109876544', '2025-02-21 16:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact_phone` varchar(15) NOT NULL,
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `name`, `contact_phone`, `location`) VALUES
(1, 'John Doe', '9876543210', 'Bangalore'),
(2, 'Jane Smith', '9123456789', 'Mumbai'),
(3, 'Robert Brown', '8765432109', 'Delhi'),
(4, 'Emily Davis', '7654321098', 'Hyderabad'),
(5, 'Michael Johnson', '6543210987', 'Chennai'),
(6, 'Sarah Wilson', '5432109876', 'Kolkata'),
(7, 'David Martinez', '4321098765', 'Pune'),
(8, 'Laura Taylor', '3210987654', 'Ahmedabad'),
(9, 'James Anderson', '2109876543', 'Jaipur'),
(10, 'Jessica White', '1098765432', 'Lucknow'),
(11, 'Daniel Thomas', '9988776655', 'Chandigarh'),
(12, 'Sophia Garcia', '8877665544', 'Bhopal'),
(13, 'William Lee', '7766554433', 'Indore'),
(14, 'Olivia Harris', '6655443322', 'Nagpur'),
(15, 'Benjamin Young', '5544332211', 'Visakhapatnam'),
(16, 'Emma Scott', '4433221100', 'Patna'),
(17, 'Alexander King', '9988221133', 'Ludhiana'),
(18, 'Mia Hall', '8877332255', 'Agra'),
(19, 'Henry Allen', '7766443377', 'Varanasi'),
(20, 'Ava Nelson', '6655554499', 'Guwahati'),
(21, 'Noah Baker', '5544665522', 'Coimbatore'),
(22, 'Charlotte Carter', '4433776633', 'Thiruvananthapuram'),
(23, 'Lucas Adams', '3322887744', 'Ranchi'),
(24, 'Harper Perez', '2211998855', 'Dehradun'),
(25, 'Ethan Moore', '1100229977', 'Mysore'),
(26, 'Isabella Hill', '9988002211', 'Raipur'),
(27, 'Mason Rivera', '8877993322', 'Amritsar'),
(28, 'Evelyn Cooper', '7766884433', 'Kanpur'),
(29, 'Logan Torres', '6655775544', 'Nashik'),
(30, 'Sophia Gonzalez', '5544667755', 'Gwalior');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_inventory`
--
ALTER TABLE `blood_inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donor_id` (`donor_id`);

--
-- Indexes for table `blood_requests`
--
ALTER TABLE `blood_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation_camps`
--
ALTER TABLE `donation_camps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_phone` (`contact_phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `blood_inventory`
--
ALTER TABLE `blood_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `blood_requests`
--
ALTER TABLE `blood_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `donation_camps`
--
ALTER TABLE `donation_camps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blood_inventory`
--
ALTER TABLE `blood_inventory`
  ADD CONSTRAINT `blood_inventory_ibfk_1` FOREIGN KEY (`donor_id`) REFERENCES `donors` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
