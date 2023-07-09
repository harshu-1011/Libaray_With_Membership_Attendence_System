-- phpMyAdmin SQL Dump
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `reading_hall`
--

----------------------------------------------------------

--
-- Table structure for table `ac_hall`
--
  CREATE TABLE IF NOT EXISTS `ac_hall` (
    `a_id` int(11) NOT NULL,
    `seat_no` int(30) PRIMARY KEY,
    `status`  varchar(10) NOT NULL,
 `date_registered` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
 ) ;

ALTER TABLE `ac_hall`
ADD CONSTRAINT UQ_KEY UNIQUE(a_id);
----------------------------------------------------------

--
-- Table structure for table `nonac_hall`
--
CREATE TABLE IF NOT EXISTS `nonac_hall` (
  `na_id` int(11) NOT NULL,
  `seat_no` int(30) PRIMARY KEY,
  `status`  varchar(10) NOT NULL,
 `date_registered` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

ALTER TABLE `nonac_hall`
ADD CONSTRAINT UQ_KEY UNIQUE(na_id);

----------------------------------------------------------

--
-- Table structure for table `new_hall`
--
CREATE TABLE IF NOT EXISTS `new_hall` (
  `n_id` int(11) NOT NULL,
  `seat_no` int(30) PRIMARY KEY,
  `status`  varchar(10) NOT NULL,
 `date_registered` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

ALTER TABLE `new_hall`
ADD CONSTRAINT UQ_KEY UNIQUE(n_id);
----------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE IF NOT EXISTS `membership` (
  `m_id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `m_name` varchar(100) DEFAULT NULL,
  `m_price` int(11) DEFAULT NULL,
  `m_facility`longtext,
  `EndDate` varchar(20) DEFAULT NULL,
  `StartDate` varchar(20) DEFAULT NULL,
  `Total_days`int(11) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
 `date_registered` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

----------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `st_id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `st_name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(10) DEFAULT NULL,
  `st_work` varchar(20) NOT NULL,
  `st_salary` numeric(7,2) NOT NULL,
  `joining_date` date NOT NULL,
 `date_registered` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- Table structure for table `success_story`
--

CREATE TABLE IF NOT EXISTS `success_story` (
 `sc_id` int(11) Primary Key AUTO_INCREMENT,
 `sc_name` varchar(20) NOT NULL,
 `sc_title` varchar(10) NOT NULL,
 `sc_story` longtext,
 `date_registered` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
 );
-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `s_id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `s_FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `ContactNo` char(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date  NOT NULL,
  `s_Address` varchar(255) DEFAULT NULL,
  `seat_no` int(30),
  `study` varchar(20) NOT NULL;
  `hall_type` varchar(20) NOT NULL,
  `m_id` int(10) NOT NULL,
  `Password` varchar(100) DEFAULT NULL,
 Constraint FK_Key Foreign Key(seat_no) References ac_hall(seat_no),
 Constraint FK_Key1 Foreign Key(seat_no) References nonac_hall(seat_no),
  Constraint FK_Key2 Foreign Key(seat_no) References new_hall(seat_no),
  Constraint FK_Key3 Foreign Key(m_id) References membership(m_id),
 `date_registered` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


--  `ts` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--   `dt` DATETIME DEFAULT CURRENT_TIMESTAMP
--  Constraint FK_Key1 Foreign Key(seat_no) References nonac_hall(na_id),
--   Constraint FK_Key2 Foreign Key(seat_no) References new_hall(n_id),

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--
CREATE TABLE IF NOT EXISTS `feedback` (
  `f_id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `s_id` integer NOT NULL,
  `s_FullName` varchar(100) DEFAULT NULL,
  `feedback` varchar (50) NOT NULL,
  `rating` float NOT NULL,
  `status` int(11) DEFAULT NULL,
Constraint FK_Key5 Foreign Key(s_id) References student(s_id),
 `date_registered` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP

);

----------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `p_id` int(11) PRIMARY KEY,
  `m_id`  int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `p_amount` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  Constraint FK_Key6 Foreign Key(s_id) References student(s_id),
  Constraint FK_Key7 Foreign Key(m_id) References membership(m_id),
 `date_registered` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

----------------------------------------------------------------
----------------------------------------------------------

--
-- Table structure for table `leaveform`
--

CREATE TABLE IF NOT EXISTS `leave` (
  `l_id` int(11) PRIMARY KEY,
  `s_name`  varchar(50) NOT NULL,
  `seat_no` int(30) NOT NULL,
  `hall_type` varchar(20) DEFAULT NULL,
  `phone_no` char(10) DEFAULT NULL,
  `Ldate` date DEFAULT NULL,
  `s_id` integer NOT NULL,
  Constraint FK_Key7 Foreign Key(s_id) References student(s_id),
 Constraint FK_Key8 Foreign Key(seat_no) References ac_hall(seat_no),
 Constraint FK_Key9 Foreign Key(seat_no) References nonac_hall(seat_no),
  Constraint FK_Key10 Foreign Key(seat_no) References new_hall(seat_no),
 `date_registered` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

----------------------------------------------------------------


-- Insert Values at ac_hall
INSERT INTO `ac_hall` (`a_id`, `seat_no`, `status`, `date_registered`) VALUES ('1', '1', 'UnOccupied', current_timestamp());
INSERT INTO `ac_hall` (`a_id`, `seat_no`, `status`, `date_registered`) VALUES ('2', '2', 'UnOccupied', current_timestamp());
INSERT INTO `ac_hall` (`a_id`, `seat_no`, `status`, `date_registered`) VALUES ('3', '3', 'Occupied', current_timestamp());
INSERT INTO `ac_hall` (`a_id`, `seat_no`, `status`, `date_registered`) VALUES ('4', '4', 'UnOccupied', current_timestamp());
INSERT INTO `ac_hall` (`a_id`, `seat_no`, `status`, `date_registered`) VALUES ('5', '5', 'Occupied', current_timestamp());
INSERT INTO `ac_hall` (`a_id`, `seat_no`, `status`, `date_registered`) VALUES ('6', '6', 'UnOccupied', current_timestamp());
INSERT INTO `ac_hall` (`a_id`, `seat_no`, `status`, `date_registered`) VALUES ('7', '8', 'Occupied', current_timestamp());
INSERT INTO `ac_hall` (`a_id`, `seat_no`, `status`, `date_registered`) VALUES ('9', '9', 'Occupied', current_timestamp());
INSERT INTO `ac_hall` (`a_id`, `seat_no`, `status`, `date_registered`) VALUES ('10', '10', 'Occupied', current_timestamp());

------------------------------------------------------------------------------------------


-- Insert Values at nonac_hall
INSERT INTO `nonac_hall` (`na_id`, `seat_no`, `status`, `date_registered`) VALUES ('1', '1', 'Occupied', current_timestamp());
INSERT INTO `nonac_hall` (`na_id`, `seat_no`, `status`, `date_registered`) VALUES ('2', '2', 'Occupied', current_timestamp());
INSERT INTO `nonac_hall` (`na_id`, `seat_no`, `status`, `date_registered`) VALUES ('3', '3', 'Occupied', current_timestamp());
INSERT INTO `nonac_hall` (`na_id`, `seat_no`, `status`, `date_registered`) VALUES ('4', '4', 'Occupied', current_timestamp());
INSERT INTO `nonac_hall` (`na_id`, `seat_no`, `status`, `date_registered`) VALUES ('5', '5', 'Occupied', current_timestamp());

------------------------------------------------------------------------------------------------------------------------------------------


-- Insert Values at new_hall

INSERT INTO `new_hall` (`n_id`, `seat_no`, `status`, `date_registered`) VALUES ('1', '1', 'UnOccupied', current_timestamp());
INSERT INTO `new_hall` (`n_id`, `seat_no`, `status`, `date_registered`) VALUES ('2', '2', 'Occupied', current_timestamp());
INSERT INTO `new_hall` (`n_id`, `seat_no`, `status`, `date_registered`) VALUES ('3', '3', 'Occupied', current_timestamp());
INSERT INTO `new_hall` (`n_id`, `seat_no`, `status`, `date_registered`) VALUES ('4', '4', 'UnOccupied', current_timestamp());
INSERT INTO `new_hall` (`n_id`, `seat_no`, `status`, `date_registered`) VALUES ('5', '5', 'UnOccupied', current_timestamp());
INSERT INTO `new_hall` (`n_id`, `seat_no`, `status`, `date_registered`) VALUES ('6', '6', 'Occupied', current_timestamp());
--------------------------------------------------------------------------------------------------------

