-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 05, 2013 at 02:12 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thegympark`
--
CREATE DATABASE `thegympark` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `thegympark`;

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `testing`( IN a INT )
BEGIN
  DECLARE b INT;
 SET b = a;
 
 SELECT b;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_add_category`( IN inTitle VARCHAR( 100 ), IN inDescription TEXT, IN inProgramID INT )
BEGIN
	INSERT INTO tgp_classes_categories ( title, description, program_id )
	VALUES( inTitle, inDescription, inProgramID );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_add_class`( IN titleID INT, IN yearIN INT, IN startTime TIME, IN endTime TIME, IN weekDay VARCHAR( 10 ), IN startDate DATE, IN endDate DATE, IN seasonIN VARCHAR( 10 ), IN categoryID INT, IN programID INT, IN priceIN INT, IN programFeatured VARCHAR(1), IN categoryFeatured VARCHAR( 1 ), IN typeIN VARCHAR( 20 ) )
BEGIN
	DECLARE classExist INT;

	SELECT COUNT( class_id ) FROM tgp_classes WHERE title_id = titleID AND tgp_program_id = programID AND category_id = categoryID AND weekday = weekDay AND start_time = startTime AND end_time = endTime AND types = typeIN AND start_date = startDate AND end_date = endDate INTO classExist;

	IF classExist = 0 THEN

		INSERT INTO tgp_classes ( title_id, year, start_time, end_time, weekday, start_date, end_date, season, tgp_class_category_id, category_id, tgp_program_id, price, program_featured, category_featured, types  )
		VALUES( titleID, yearIN, startTime, endTime, weekDay, startDate, endDate, seasonIN, categoryID, categoryID, programID, priceIN, programFeatured, categoryFeatured, typeIN );
	
		SELECT LAST_INSERT_ID();
	ELSE
		SELECT classExist;
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_add_class_title`( IN title VARCHAR( 150 ), IN ageGroup VARCHAR( 100 ), IN programID INT, IN categoryID INT )
BEGIN
	INSERT INTO class_titles ( title, age_group, program_id, category_id )
	VALUES ( title, ageGroup, programID, categoryID);

	SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_add_feature`( IN fTitle VARCHAR( 250 ), IN fQuantity INT )
BEGIN
	INSERT INTO tgp_membership_features ( title, quantity )
	VALUES( fTitle, fQuantity );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_add_package_to_Class`( IN packageID INT, IN classID INT )
BEGIN
	INSERT INTO tgp_packages_classes_junction( package_id, class_id )
	VALUES( packageID, classID );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_add_program`( IN inTitle VARCHAR( 100 ), IN inDescription TEXT )
BEGIN
	INSERT INTO tgp_programs ( title, description )
	VALUES( inTitle, inDescription );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_admin_add_student`( IN sFName VARCHAR( 50 ), IN sLNAME VARCHAR( 70 ), IN sDOB DATE, IN sGender ENUM( 'M', 'F' ) )
BEGIN		
	INSERT INTO
	tgp_students( first, last, dob, gender )
	VALUES( sFName, sLName, sDOB, sGender );
		
	SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_admin_class_add_student`( IN sID INT, IN cID INT )
BEGIN
	INSERT INTO tgp_class_students( student_id, class_id )
	VALUES( sID, cID );
	
	SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_admin_get_class_days`( IN aDate DATE )
BEGIN
	SELECT weekday
	FROM tgp_classes
	WHERE start_date <= aDate AND end_date >= aDate
	GROUP BY weekday
	ORDER BY weekday;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_admin_get_student`( IN sID INT )
BEGIN
	SELECT *
	FROM tgp_students
	WHERE id = sID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_admin_get_student_address`( IN sID INT )
BEGIN
	SELECT * 
	FROM tgp_address
	WHERE student_id = sID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_admin_get_student_caregiver`( IN sID INT )
BEGIN
	SELECT *
	FROM tgp_nannies
	WHERE student_id = sID
	ORDER BY dateAdded, name;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_admin_get_student_contact_info`( IN sID INT )
BEGIN
	SELECT *
	FROM tgp_student_contact_info
	WHERE student_id = sID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_admin_get_student_emergency_contact`( IN sID INT )
BEGIN
	SELECT *
	FROM tgp_emergency_contact
	WHERE student_id = sID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_admin_get_student_parents`( IN sID INT )
BEGIN
	SELECT *
	FROM tgp_parents
	WHERE student_id = sID
	ORDER BY name;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_admin_get_student_school`( IN sID INT )
BEGIN
	SELECT *
	FROM tgp_student_school
	WHERE student_id = sID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_admin_participant_exist`( IN pFName VARCHAR( 50 ), IN pLName VARCHAR( 70 ), IN pDOB DATE, IN pGender ENUM( 'M', 'F' ) )
BEGIN
	SELECT COUNT( * ) 
	FROM tgp_students
	WHERE first = pFName AND last = pLName AND dob = pDOB AND gender = pGender;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_admin_student_add_address`( IN sID INT, IN sStreet VARCHAR( 250 ), IN sCity VARCHAR( 50 ), IN sState VARCHAR( 2 ), IN sZip VARCHAR( 5 ) )
BEGIN
	INSERT INTO 
	tgp_address( student_id, street, city, state, zip )
	VALUES( sID, sStreet, sCity, sState, sZip );
	
	SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_admin_student_add_caregiver`( IN sID INT, IN cName VARCHAR( 150 ), IN cPhone VARCHAR( 20 ) )
BEGIN
	INSERT INTO tgp_nannie( student_id, name, phone )
	VALUES( sID, cName, cPhone );
	
	SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_admin_student_add_contact_info`( IN sID INT, IN cHPhone VARCHAR( 20 ), IN cCPhone VARCHAR( 20 ), IN cEmail VARCHAR( 150 ) )
BEGIN
	INSERT INTO 
	tgp_student_contact_info( student_id, homePhone, cellPhone, email )
	VALUES( sID, cHPhone, cCPhone, cEmail );
	
	SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_admin_student_add_emergency_contact`( IN sID INT, IN ecName VARCHAR( 150 ), IN ecRelation VARCHAR( 30 ), IN ecHPhone VARCHAR( 20 ), IN ecCPhone VARCHAR( 20 ), IN ecWPhone VARCHAR( 20 ) )
BEGIN
	INSERT INTO tgp_emergency_contact( student_id, name, relation, homePhone, cellPhone, workPhone )
	VALUES( sID, ecName, ecRelation, ecHPhone, ecCPhone, ecWPhone );
	
	SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_admin_student_add_parent`( IN sID INT, IN pName VARCHAR( 150 ), IN pCPhone VARCHAR( 20 ), IN pHPhone VARCHAR( 20 ), IN pWPhone VARCHAR( 20 ), IN pEmail VARCHAR( 200 ) )
BEGIN
	INSERT INTO
	tgp_parents( student_id, name, cellPhone, homePhone, workPhone, email )
	VALUES( sID, pName, pCPhone, pHPhone, pWPhone, pEmail );
	
	SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_admin_student_add_school`( IN sID INT, IN sName VARCHAR( 150 ), IN sGrade VARCHAR( 30 ) )
BEGIN
	INSERT INTO 
	tgp_student_school( student_id, name, grade)
	VALUES( sID, sName, sGrade );
	
	SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_create_user`( IN name VARCHAR( 100 ), IN email VARCHAR( 150 ), IN pswd VARCHAR( 32 ) )
BEGIN
	INSERT INTO tgp_users ( uName, uEmail, uPswd )
	VALUES( name, email, pswd );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_delete_category`( IN categoryID INT )
BEGIN
	DECLARE categoryRowsCount INT;

	SELECT COUNT( * ) 
	FROM tgp_classes
	WHERE tgp_class_category_id = categoryID
	INTO categoryRowsCount;

	IF categoryRowsCount = 0 THEN
		DELETE FROM tgp_classes_categories WHERE cc_id = categoryID;
		SELECT 1;
	ELSE
		SELECT -1;
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_delete_newsletter`( IN nID INT )
BEGIN
	DELETE FROM tgp_newsletters
	WHERE newsletter_id = nID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_delete_program`( IN programID INT )
BEGIN
	DECLARE programClassRowsCount INT;
	DECLARE programCategoryRowsCount INT;

	SELECT COUNT( * )
	FROM tgp_classes 
	WHERE tgp_program_id = programID
	INTO programClassRowsCount;

	SELECT COUNT( * )
	FROM tgp_classes 
	WHERE tgp_program_id = programID
	INTO programCategoryRowsCount;

	IF programClassRowsCount = 0 AND programCategoryRowsCount =  0 THEN
		DELETE FROM tgp_programs WHERE program_id = programID;
		SELECT 1;
	ELSE
		SELECT -1;
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_does_email_exist`( IN email VARCHAR( 150 ) )
BEGIN
	SELECT uEmail
	FROM tgp_users
	WHERE uEmail = email;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_edit_feature`( IN featureID INT, IN fTitle VARCHAR( 250 ), IN fQuantity INT )
BEGIN
	UPDATE tgp_membership_features 
	SET title = fTitle, quantity = fQuantity
	WHERE id = featuredID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_filters_get_age`( IN fStartAge DATE, IN fEndAge DATE )
BEGIN
	SELECT *
	FROM tgp_students ts
	WHERE ts.dob <= fStartAge AND ts.dob >= fEndAge
	ORDER BY ts.name, ts.dob;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_filters_get_category_students`( IN cID INT )
BEGIN
	SELECT ts.*
	FROM tgp_classes_categories tcc
	INNER JOIN tgp_classes tc ON tc.category_id = tcc.cc_id
	INNER JOIN tgp_class_students tcs ON tcs.class_id = tc.class_id
	INNER JOIN tgp_students ts ON ts.id = tcs.student_id
	WHERE tcc.cc_id = cID
	ORDER BY ts.name;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_filters_get_class_students`( IN cID INT )
BEGIN
	SELECT ts.*,tsc.email AS email, tp.email AS parent_email
	FROM tgp_classes tc
	LEFT JOIN tgp_class_students tcs ON tcs.class_id = tc.class_id
	LEFT JOIN tgp_students ts ON ts.id = tcs.student_id
	LEFT JOIN tgp_student_contact_info tsc ON tsc.student_id = tcs.student_id
	LEFT JOIN tgp_parents tp ON tp.student_id = tcs.student_id
	WHERE tc.class_id = cID
	ORDER BY ts.last, ts.first;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_age_groups`()
BEGIN
	SELECT *
	FROM tgp_age_groups
	ORDER BY title;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_categories`()
BEGIN
	SELECT *
	FROM tgp_classes_categories;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_category`( IN categoryID INT )
BEGIN
	SELECT * 
	FROM tgp_classes_categories
	WHERE cc_id = categoryID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_category_classes`( IN categoryID INT )
BEGIN 
	SELECT c.*, ct.title AS title
	FROM tgp_classes c
	INNER JOIN class_titles ct ON ct.id = c.title_id
	WHERE c.category_id = categoryID
	ORDER BY c.weekday, c.start_time, ct.title;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_category_class_titles`( IN categoryID INT )
BEGIN
	SELECT *
	FROM class_titles
	WHERE category_id = categoryID
	ORDER BY title;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_category_featured_classes`( IN categoryID INT )
BEGIN
	SELECT c.*, ct.title AS title
	FROM tgp_classes c
	INNER JOIN class_titles ct ON ct.id = c.title_id
	WHERE c.tgp_class_category_id = categoryID AND c.category_featured = 'Y'
	ORDER BY c.weekday, c.start_time, ct.title;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_class`( IN classID INT )
BEGIN
	SELECT c.*, ct.title, ct.type, ct.age_group, p.title AS program_title, cc.title AS category_title, cc.description
	FROM tgp_classes c
	LEFT JOIN class_titles ct ON ct.id = c.title_id
	LEFT JOIN tgp_programs p ON p.program_id = c.tgp_program_id
	LEFT JOIN tgp_classes_categories cc ON cc.cc_id = c.tgp_class_category_id
	WHERE c.class_id = classID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_classes`()
BEGIN
	SELECT c.*, ct.type AS type, ct.title AS title, ct.age_group, p.title AS program_title, cc.title AS category_title, cc.description
	FROM tgp_classes c
	INNER JOIN class_titles ct ON ct.id = c.title_id
	INNER JOIN tgp_programs p ON p.program_id = c.tgp_program_id
	INNER JOIN tgp_classes_categories cc ON cc.cc_id = c.tgp_class_category_id
	ORDER BY ct.title, ct.age_group, c.start_time;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_classes_category_program`( IN classID INT )
BEGIN
	SELECT c.*, p.title AS program_title, cc.title AS category_title, cc.description
	FROM tgp_classes c
	INNER JOIN tgp_programs p ON p.program_id = c.tgp_program_id
	INNER JOIN tgp_classes_categories cc ON cc.cc_id = c.tgp_class_category_id
	WHERE c.tgp_program_id IN ( SELECT tgp_program_id FROM tgp_classes WHERE class_id = classID ) AND c.class_id != classID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_classes_in_class_group`( IN classGroupID INT )
BEGIN
	SELECT *
	FROM tgp_classes
	WHERE title_id = classGroupID
	ORDER BY weekday, start_time;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_class_categories`( IN classID INT )
BEGIN
	SELECT *
	FROM tgp_classes_categories
	WHERE cc_id IN ( SELECT tgp_class_category_id FROM tgp_classes WHERE class_id = classID )
	ORDER BY title ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_class_group`( IN groupID INT )
BEGIN
	SELECT *
	FROM class_titles
	WHERE id = groupID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_class_packages`( IN classGroupID INT, IN type VARCHAR( 100 ) )
BEGIN
	SELECT cp.*
	FROM tgp_packages_classes_junction pcj
	INNER JOIN tgp_class_packages cp ON cp.id = pcj.package_id
	WHERE pcj.class_id = classGroupID AND cp.type = type;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_class_titles`()
BEGIN
	SELECT *
	FROM class_titles
	ORDER BY title, age_group;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_day_classes`( IN weekDay VARCHAR( 9 ), IN season VARCHAR( 6), IN year INT )
BEGIN
	SELECT c.*, ct.title AS title
	FROM tgp_classes c
	INNER JOIN class_titles ct ON ct.id = c.title_id
	WHERE c.weekday = weekDay AND c.season = season AND c.year = year
	ORDER BY ct.title;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_features`( IN mID INT )
BEGIN
	SELECT * 
	FROM tgp_membership_features
	WHERE id NOT IN( SELECT attribute_id FROM tgp_membership_attributes WHERE membership_id = mID  )
	ORDER BY title;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_membership`( IN msID INT )
BEGIN
	SELECT tm.*, tmp.title AS plan, tmp.description
	FROM tgp_memberships tm
	INNER JOIN tgp_membership_plans tmp ON tmp.id = tm.plan_id	
	WHERE tm.id = msID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_memberships`( )
BEGIN
	SELECT tm.*, tmp.type
	FROM tgp_memberships tm
	INNER JOIN tgp_membership_types tmp ON tmp.id = tm.type_id
	WHERE tm.active = 1
	ORDER BY tm.plan_id, tm.price, tm.type_id, tm.title;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_membership_attributes`( IN msID INT )
BEGIN
	SELECT tmf.*
	FROM tgp_membership_attributes tma
	INNER JOIN tgp_membership_features tmf ON tmf.id = tma.attribute_id
	WHERE tma.membership_id = msID
	ORDER BY title;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_membership_feature`( IN fID INT )
BEGIN
	SELECT *
	FROM tgp_membership_features 
	WHERE id = fID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_membership_features`( IN mID INT )
BEGIN
	SELECT tmf.*
	FROM tgp_membership_attributes tma
	INNER JOIN tgp_membership_features tmf ON tmf.id = tma.attribute_id
	WHERE tma.membership_id = mID
	ORDER BY tmf.title;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_newsletter`( IN nID INT )
BEGIN
	SELECT *
	FROM tgp_newsletters
	WHERE newsletter_id = nID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_newsletters`()
BEGIN
	SELECT *
	FROM tgp_newsletters
	ORDER BY title;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_newsletters_filters`()
BEGIN
	SELECT *
	FROM tgp_newsletter_filters
	ORDER BY title;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_newsletter_categories`()
BEGIN
	SELECT *
	FROM tgp_newsletter_categories
	ORDER BY title;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_newsletter_category`( IN cID INT )
BEGIN
	SELECT *
	FROM tgp_newsletter_categories
	WHERE id = cID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_newsletter_category_member`( IN cID INT, IN mID INT )
BEGIN
	SELECT tu.*
	FROM tgp_newsletter_user_categories tnuc
	INNER JOIN tgp_users tu ON tu.id = tnuc.user_id
	WHERE tnuc.user_id = mID AND tnuc.category_id = cID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_newsletter_category_members`( IN cID INT )
BEGIN
	SELECT tu.*
	FROM tgp_newsletter_user_categories tnuc
	INNER JOIN tgp_users tu ON tu.id = tnuc.user_id
	WHERE tnuc.category_id = cID AND tnuc.status = 1
	ORDER BY tu.uName, tu.uEmail;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_newsletter_category_non_members`( IN cID INT )
BEGIN
	SELECT tu.*
	FROM tgp_newsletter_user_categories tnuc
	INNER JOIN tgp_users tu ON tu.id = tnuc.user_id
	WHERE tnuc.user_id NOT IN( SELECT user_id FROM tgp_newsletter_user_categories WHERE category_id = cID AND status = 1)
	ORDER BY tu.uName, tu.uEmail;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_newsletter_members`()
BEGIN
	SELECT *
	FROM tgp_newsletter_user_categories tnuc
	INNER JOIN tgp_users tu ON tu.id = tnuc.user_id
	WHERE tnuc.status = 1
	ORDER BY tu.uName;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_newsletter_non_members`()
BEGIN
	SELECT *
	FROM tgp_users tu
	WHERE id NOT IN ( SELECT user_id FROM tgp_newsletter_user_categories WHERE category_id = 1 )
	ORDER BY uName;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_packages`()
BEGIN
	SELECT *
	FROM tgp_class_packages
	ORDER BY type, title;	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_program`( IN programID INT )
BEGIN
	SELECT *
	FROM tgp_programs 
	WHERE program_id = programID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_programs`()
BEGIN
	SELECT program_id, title
	FROM tgp_programs
	ORDER BY title ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_program_categories`( IN programID INT )
BEGIN
	SELECT *
	FROM tgp_classes_categories
	WHERE program_id = programID
	ORDER BY title;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_program_category_classes`( IN programID INT, IN categoryID INT )
BEGIN
	IF programID > 0 THEN
		IF categoryID > 0 THEN
			SELECT c.*, p.title AS program_title, cc.title AS category_title
			FROM tgp_classes c
			INNER JOIN tgp_programs p ON p.program_id = programID
			INNER JOIN tgp_classes_categories cc ON cc.cc_id = categoryID
			WHERE c.tgp_program_id = programID AND c.tgp_class_category_id = categoryID
			ORDER BY c.title;
		ELSE
			SELECT -1;
		END IF;
	ELSE
		SELECT -1;
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_program_classes`( IN programID INT )
BEGIN
	SELECT c.*, ct.title AS title, p.title AS program_title, cc.title AS category_title
	FROM tgp_classes c
	INNER JOIN class_titles ct ON ct.id = c.title_id
	INNER JOIN tgp_programs p ON p.program_id = programID
	INNER JOIN tgp_classes_categories cc ON cc.cc_id = c.tgp_class_category_id
	WHERE c.tgp_program_id = programID
	ORDER BY c.weekday, c.start_time, ct.title;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_program_class_titles`( IN programID INT )
BEGIN 
	SELECT *
	FROM class_titles
	WHERE program_id = programID
	ORDER BY title;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_program_featured_classes`( IN programID INT )
BEGIN
	SELECT c.*, ct.title AS title 
	FROM tgp_classes c
	INNER JOIN class_titles ct ON ct.id = c.title_id
	WHERE c.tgp_program_id = programID AND c.program_featured = 'Y'
	ORDER BY c.weekday, c.start_time, ct.title;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_specific_classes`( IN classIDS VARCHAR( 250 ) )
BEGIN
	SELECT c.*, ct.title AS title, ct.age_group 
	FROM tgp_classes c
	INNER JOIN class_titles ct ON ct.id = c.title_id
	WHERE c.class_id IN ( classIDS )
	ORDER BY ct.title, ct.age_group, c.start_time;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_user`( IN uID INT )
BEGIN
	SELECT * 
	FROM tgp_users
	WHERE id = uID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_limit`( IN lTitle VARCHAR( 100 ), IN lDesc TEXT, IN sLimit INT, IN eLimit INT )
BEGIN
	DECLARE limitExist INT;
	
	SELECT id FROM tgp_limit WHERE title = lTitle INTO limitExist;
	
	IF limitExist = 0 THEN 
		INSERT INTO 
		tgp_limit( title, description, start_limit, end_limit )
		VALUES( lTitle, lDesc, sLimit, eLimit );
		
		SELECT LAST_INSERT_ID();
	ELSE
		SELECT limitExist;
	END IF;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_membership_add_attribute`( IN msID INT, IN attributeID INT )
BEGIN
	INSERT INTO tgp_membership_attributes(membership_id, attribute_id ) VALUES( msID, attributeID );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_membership_get_attributes`( IN msID INT )
BEGIN
	SELECT tmf.*
	FROM tgp_membership_attributes tma
	INNER JOIN tgp_membership_features tmf ON tmf.id = tma.attribute_id
	WHERE tma.membership_id = msID AND tma.type = 'Fixed'
	ORDER BY tmf.title;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_membership_get_attributes_options`( IN msID INT )
BEGIN
	SELECT tmf.*
	FROM tgp_membership_attributes tma
	INNER JOIN tgp_membership_features tmf ON tmf.id = tma.attribute_id
	WHERE tma.membership_id = msID AND tma.type = 'Option'
	ORDER BY tmf.title;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_newsletter_add`( IN nTitle VARCHAR( 250 ), IN nMessage LONGTEXT )
BEGIN
	INSERT INTO
	tgp_newsletters( title, message )
	VALUES( nTitle, nMessage );
	
	SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_newsletter_add_category`( IN cTitle VARCHAR( 250 ), IN cDesc TEXT, IN cFilterID INT )
BEGIN
	DECLARE categoryIN INT;
	
	SELECT COUNT( id ) FROM tgp_newsletter_categories WHERE title = cTitle INTO categoryIN;
	
	IF categoryIN < 1 THEN
		INSERT INTO tgp_newsletter_categories( title, description, filter_id )
		VALUES( cTitle, cDesc, cFilterID );
		SELECT 0;
	ELSE
		SELECT categoryIN;
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_newsletter_add_filter`( IN fTitle VARCHAR( 100 ), IN fDesc TINYTEXT )
BEGIN
	DECLARE filterExist INT;
	
	SELECT COUNT(*) FROM tgp_newsletter_filters WHERE title = fTitle INTO filterExist;
	
	IF filterExist = 0 THEN
		INSERT INTO
		tgp_newsletter_filters( title, description )
		VALUES( fTitle, fDesc );
		
		SELECT 1;
	ELSE
		SELECT 0;
	END IF;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_newsletter_add_member`( IN mID INT )
BEGIN
	DECLARE memberIN INT;
	
	SELECT COUNT( user_id ) FROM tgp_newsletter_user_categories WHERE category_id = 1 AND user_id = mID INTO memberIN;
	
	IF memberIN < 1 THEN
		INSERT INTO tgp_newsletter_user_categories ( category_id, user_id )
		VALUES( 1, mID );
	ELSE
		SELECT memberIN;
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_newsletter_add_new_member`( IN mName VARCHAR( 150 ), IN mEmail VARCHAR( 250 ), IN cID INT )
BEGIN
	DECLARE memberID INT;
	DECLARE memberIN INT;
	
	SELECT id FROM tgp_users WHERE uEmail = mEmail INTO memberID;
	
	IF memberID > 0 THEN		
		SELECT COUNT( user_id ) 
		FROM tgp_newsletter_user_categories 
		WHERE user_id = memberID INTO memberIN;
		
		IF memberIN < 1 THEN
			IF cID > 0 THEN
				INSERT 
				INTO tgp_newsletter_user_categories( user_id, category_id )
				VALUES( memberID, cID );
			ELSE
				INSERT 
				INTO tgp_newsletter_user_categories( user_id, category_id )
				VALUES( memberID, 1 );				
			END IF;
		END IF;
		
	ELSE
		INSERT INTO tgp_users( uName, uEmail, type)
		VALUES( mName, mEmail, 'N' );
		
		IF cID > 0 THEN
			INSERT INTO tgp_newsletter_user_categories( user_id, category_id )
			VALUES( LAST_INSERT_ID(), cID );
		ELSE
			INSERT INTO tgp_newsletter_user_categories( user_id, category_id )
			VALUES( LAST_INSERT_ID(), 1);
		END IF;
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_newsletter_category_add_existing_user`( IN cID INT, IN mID INT )
BEGIN
	DECLARE memberIN INT;
	SELECT COUNT( id ) 
	FROM tgp_newsletter_user_categories
	WHERE category_id = cID AND user_id = mID 
	INTO memberIN;
	
	IF memberIN < 1 THEN
		INSERT INTO
		tgp_newsletter_user_categories( category_id, user_id )
		VALUES( cID, mID );
	ELSE
		SELECT memberIN;
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_newsletter_delete_category`( IN cID INT )
BEGIN
	DECLARE membersIN INT;
	SELECT COUNT( user_id ) 
	FROM tgp_newsletter_user_categories
	WHERE status = 1 AND category_id = cID INTO membersIN;
	
	IF membersIN < 1 THEN
		DELETE FROM tgp_newsletter_categories
		WHERE id = cID;
		
		select true;
	ELSE
		SELECT false;
	END IF;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_newsletter_remove_category_member`( IN cID INT, IN mID INT )
BEGIN
	UPDATE tgp_newsletter_user_categories
	SET status = '0'
	WHERE category_id = cID AND user_id = mID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_newsletter_update`( IN nID INT, IN nTitle VARCHAR( 250 ), IN nMessage LONGTEXT )
BEGIN
	UPDATE tgp_newsletters
	SET title = nTitle, message = nMessage
	WHERE newsletter_id = nID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_newsletter_update_filter_description`( IN fID INT, IN fDesc TINYTEXT )
BEGIN
	UPDATE tgp_newsletter_filters
	SET description = fDesc
	WHERE id = fID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_newsletter_update_sent_to_member`( IN nID INT, IN cID INT, IN mID INT )
BEGIN
	INSERT INTO tgp_newsletter_sent( newsletter_id, category_id, member_id )
	VALUES( nID, cID, mID );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_shopping_cart_add_class`( IN cartID VARCHAR( 32 ), IN classID INT, IN classTitleID INT, IN classTitle VARCHAR(250), IN classDays TEXT, IN classType VARCHAR( 50 ), IN classPrice INT, IN classPackage VARCHAR( 250 ) )
BEGIN
	DECLARE classQuantity INT;
	
	SELECT quantity FROM shopping_cart WHERE user_id = cartID AND class_id = classID AND package = classPackage INTO classQuantity;
	
	IF classQuantity IS NULL THEN
		INSERT INTO shopping_cart ( user_id, class_id, class_title_id, class_title, class_days, class_type, class_price, package ) VALUES( cartID, classID, classTitleID, classTitle, classDays, classType, classPrice, classPackage );
	ELSE			
		UPDATE shopping_cart SET quantity = quantity + 1 WHERE user_id = cartID AND class_id = classID AND package = classPackage;
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_shopping_cart_empty`( IN userID VARCHAR(32) )
BEGIN
	SELECT COUNT( * ) FROM shopping_cart WHERE user_id = userID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_shopping_cart_get_user_classes`( IN userID VARCHAR(32) )
BEGIN
	SELECT *
	FROM shopping_cart 
	WHERE user_id = userID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_shopping_cart_get_user_fixed_classes`( IN userID INT )
BEGIN
	SELECT sc.*, ct.title
	FROM shopping_cart sc
	INNER JOIN class_titles ct ON ct.id = sc.class_title_id
	WHERE sc.user_id = userID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_shopping_cart_get_user_flex_classes`( IN userID INT )
BEGIN
	SELECT sc.*, ct.title
	FROM shopping_cart sc
	INNER JOIN tgp_classes tc ON tc.class_id = sc.class_id 
	INNER JOIN class_titles ct ON ct.id = sc.class_title_id
	WHERE sc.user_id = userID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_shopping_cart_remove_classes`( IN userID INT )
BEGIN
	DELETE FROM shopping_cart
	WHERE user_id = userID;	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_shopping_cart_update`( IN scID INT, IN scQuantity INT )
BEGIN
	IF scQuantity < 1 THEN
		DELETE FROM shopping_cart
		WHERE sc_id = scID;
	ELSE
		UPDATE shopping_cart
		SET quantity = scQuantity
		WHERE sc_id = scID;
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_signin_user`( IN email VARCHAR( 150 ), IN pswd VARCHAR(32) )
BEGIN
	SELECT * 
	FROM tgp_users
	WHERE uEmail = email AND uPswd = pswd;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_student_update_address`( IN sID INT, IN aID INT, IN aStreet VARCHAR( 250 ), IN aCity VARCHAR( 50 ), IN aState VARCHAR( 2 ), IN aZip VARCHAR( 5 ) )
BEGIN
	UPDATE tgp_address 
	SET street = aStreet, city = aCity, state = aState, zip = aZip
	WHERE student_id = sID AND id = aID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_student_update_caregiver`( IN sID INT, IN cID INT, IN cName VARCHAR( 150 ), IN cPhone VARCHAR( 20 ) )
BEGIN
	UPDATE tgp_nannies
	SET name = cName, phone = cPhone
	WHERE student_id = sID AND id = cID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_student_update_contact_info`( IN sID INT, IN cID INT, IN cHPhone VARCHAR( 20 ), IN cCPhone VARCHAR( 20 ), IN cEmail VARCHAR( 150 ) )
BEGIN
	UPDATE tgp_contact_info
	SET homePHone = cHPhone, cellPhone = cCPhone, email = cEmail
	WHERE student_id = sID AND id = cID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_student_update_emergency_contact`( IN sID INT, IN eID INT, IN eName VARCHAR( 150 ), IN eRelation VARCHAR( 20 ), IN eHPhone VARCHAR( 20 ), IN eWPHone VARCHAR( 20 ), IN eCPhone VARCHAR( 20 ) )
BEGIN
	UPDATE tgp_emergency_contact
	SET name = eName, relation = eRelation, homePhone = eHPhone, workPhone = eWPhone, cellPhone = eCPhone
	WHERE student_id = sID AND id = eID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_student_update_parent`( IN sID INT, pID INT, IN pName VARCHAR( 150 ), IN pHPhone VARCHAR( 20 ), IN pWPhone VARCHAR( 20 ), IN pCPhone VARCHAR( 20 ), IN pEmail VARCHAR( 150 ) )
BEGIN
	UPDATE tgp_parents 
	SET name = pName, homePhone = pHPhone, workPhone = pWPhone, cellPhone = pCPhone, email = pEmail
	WHERE student_id = sID AND id = pID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_update_category`( IN categoryID INT, IN programID INT, IN categoryTitle VARCHAR( 150 ), IN categoryDescription TEXT )
BEGIN
	UPDATE tgp_classes_categories
	SET title = categoryTitle, description = categoryDescription, program_id = programID
	WHERE cc_id = categoryID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_update_class`( IN classID INT, IN classTitleID INT, IN classWeekday VARCHAR(10), IN classStartTime TIME, IN classEndTime TIME, IN classStartDate DATE, IN classEndDate DATE, IN classPrice INT )
BEGIN
	UPDATE tgp_classes
	SET title_id = classTitleID, weekday = classWeekday, start_time = classStartTime, end_time = classEndTime, start_date = classStartDate, end_date = classEndDate, price = classPrice
	WHERE class_id = classID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_update_program`( IN programID INT, IN programTitle VARCHAR( 150 ), IN programDescription TEXT )
BEGIN 
	UPDATE tgp_programs
	SET title = programTitle, description = programDescription
	WHERE program_id = programID;	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_user_add_membership`( IN userID INT, IN membershipID INT )
BEGIN
	INSERT INTO 
	tgp_user_memberships ( user_id, membership_id )
	VALUES( userID, membershipID );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_user_get_membership`( IN userID INT )
BEGIN 
	SELECT * 
	FROM tgp_user_memberships
	WHERE user_id = userID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_user_has_membership`( IN userID INT )
BEGIN
	DECLARE membershipRows INT;

	SELECT COUNT( * ) 
	FROM tgp_user_memberships
	WHERE user_id = userID
	INTO membershipRows;

	IF membershipRows = 0  THEN
		SELECT 0;
	ELSE
		SELECT 1;
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_user_last_login`( IN userID INT )
BEGIN 
	UPDATE tgp_users 
	SET lastLogIn = NOW()
	WHERE id = userID;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `class_titles`
--

CREATE TABLE IF NOT EXISTS `class_titles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `program_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `age_group` varchar(100) NOT NULL,
  `type` enum('Fixed','Flexible') NOT NULL DEFAULT 'Fixed',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `class_titles`
--

INSERT INTO `class_titles` (`id`, `title`, `program_id`, `category_id`, `age_group`, `type`) VALUES
(1, 'Todds & Moms', 1, 1, '12 month - 18 months', 'Fixed'),
(7, 'Todds & Moms', 1, 1, '18 months - 24 months', 'Fixed'),
(8, 'testing', 4, 0, '4-3', 'Fixed'),
(11, 'Open Play', 5, 12, '0-12', 'Flexible'),
(12, 'KidFit', 8, 4, '5-12', 'Fixed'),
(13, 'Men''s Fitness', 8, 6, '18-50', 'Fixed');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE IF NOT EXISTS `shopping_cart` (
  `sc_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(32) NOT NULL,
  `class_id` int(11) NOT NULL,
  `class_title_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `date_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `buy_now` enum('True','False') NOT NULL DEFAULT 'True',
  `package` varchar(250) DEFAULT NULL,
  `class_type` varchar(50) NOT NULL DEFAULT 'Fixed',
  `class_price` int(11) NOT NULL,
  `class_days` text NOT NULL,
  `class_title` varchar(250) NOT NULL,
  `type` enum('Class','Membership') NOT NULL DEFAULT 'Class',
  PRIMARY KEY (`sc_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the values of the items a user tries to buy' AUTO_INCREMENT=21 ;

--
-- Dumping data for table `shopping_cart`
--

INSERT INTO `shopping_cart` (`sc_id`, `user_id`, `class_id`, `class_title_id`, `quantity`, `date_on`, `buy_now`, `package`, `class_type`, `class_price`, `class_days`, `class_title`, `type`) VALUES
(20, 'bccdc9debf08d5bec1ba8e3a6fc660da', 6, 7, 1, '2013-03-21 00:24:17', 'True', '', 'Fixed', 350, 'Thursday__9:30am', 'Todds & Moms', 'Class'),
(18, '751449f4f56d2b465786aad16a14c58f', 11, 12, 2, '2013-03-20 21:40:19', 'True', '', 'Fixed', 250, 'Monday__2:30pm', 'KidFit', 'Class'),
(19, 'bccdc9debf08d5bec1ba8e3a6fc660da', 1, 1, 1, '2013-03-21 00:23:56', 'True', '', 'Fixed', 250, 'Thursday__4pm', 'Todds & Moms', 'Class');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_address`
--

CREATE TABLE IF NOT EXISTS `tgp_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `street` varchar(250) NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the addresses for students' AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tgp_address`
--

INSERT INTO `tgp_address` (`id`, `student_id`, `street`, `city`, `state`, `zip`) VALUES
(15, 22, '715 46th Ave. 2nd Floor', 'Brooklyn', 'NY', '11215'),
(9, 16, '21 E 92nd Street', 'New York ', 'NY', '10001'),
(14, 21, '715 45th Street 2nd Floor', 'Brooklyn', 'NY', '11216');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_age_groups`
--

CREATE TABLE IF NOT EXISTS `tgp_age_groups` (
  `age_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`age_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tgp_age_groups`
--

INSERT INTO `tgp_age_groups` (`age_group_id`, `title`) VALUES
(1, 'All Ages'),
(2, '18 yrs old and up'),
(3, '8 yrs old - 17 yrs old'),
(4, '7 yrs old - 12 yrs old'),
(5, '9 yrs old - 12 yrs old'),
(6, '5 yrs old - 8 yrs old'),
(7, 'Pre-walking'),
(8, '12 months - 17 months'),
(9, '18 months - 24 months'),
(10, '2 yrs old - 3 yrs old'),
(11, '3 yrs old - 4 yrs old'),
(12, 'Infants - 6 yrs old');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_class_packages`
--

CREATE TABLE IF NOT EXISTS `tgp_class_packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `price` int(11) NOT NULL,
  `type` enum('Individual','Family') NOT NULL,
  `amount` int(11) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the packages which will linked to a flexible class' AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tgp_class_packages`
--

INSERT INTO `tgp_class_packages` (`id`, `title`, `price`, `type`, `amount`, `date_added`) VALUES
(1, '3pk (good for 30 days) ', 30, 'Individual', 3, '0000-00-00 00:00:00'),
(2, '10pk (good for 6 months)', 90, 'Individual', 10, '0000-00-00 00:00:00'),
(3, 'Monthly Unlimited Value Play Pass', 49, 'Individual', -1, '0000-00-00 00:00:00'),
(4, '3-Month unlimited Value Play Pass', 129, 'Individual', -3, '0000-00-00 00:00:00'),
(5, '6-Month Unlimited Value Play Pass', 199, 'Individual', -6, '0000-00-00 00:00:00'),
(6, 'Yearly Unlimited Value Play Pass', 299, 'Individual', -12, '0000-00-00 00:00:00'),
(7, '15 visit play packet (good for 6 months)', 149, 'Family', 15, '0000-00-00 00:00:00'),
(8, 'Monthly Unlimited Value Play Pass', 89, 'Family', -1, '0000-00-00 00:00:00'),
(9, '3-Month Unlimited Play Pass', 219, 'Family', -3, '0000-00-00 00:00:00'),
(10, '6-Month Unlimited Play Pass', 349, 'Family', -6, '0000-00-00 00:00:00'),
(11, '1-Year Unlimited Play Pass', 519, 'Family', -12, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_class_students`
--

CREATE TABLE IF NOT EXISTS `tgp_class_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `addedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modefied` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the connection between students and classes' AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tgp_class_students`
--

INSERT INTO `tgp_class_students` (`id`, `class_id`, `student_id`, `addedOn`, `modefied`) VALUES
(2, 10, 16, '2013-03-02 03:06:06', 0),
(8, 13, 22, '2013-03-06 00:42:10', 0),
(7, 10, 21, '2013-03-02 05:45:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tgp_classes`
--

CREATE TABLE IF NOT EXISTS `tgp_classes` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title_id` int(11) NOT NULL,
  `year` int(11) NOT NULL DEFAULT '2012',
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `weekday` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday') NOT NULL,
  `season` enum('Fall','Winter','Spring','Summer') NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `location_id` int(11) NOT NULL DEFAULT '1',
  `instructor_id` int(11) NOT NULL DEFAULT '1',
  `category_id` int(11) NOT NULL,
  `tgp_class_category_id` int(11) DEFAULT NULL,
  `tgp_program_id` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `total_time` int(11) NOT NULL,
  `program_featured` enum('Y','N') NOT NULL DEFAULT 'Y',
  `category_featured` enum('Y','N') NOT NULL DEFAULT 'Y',
  `types` enum('Fixed','Flexible') NOT NULL DEFAULT 'Fixed',
  PRIMARY KEY (`class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the classes information' AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tgp_classes`
--

INSERT INTO `tgp_classes` (`class_id`, `title_id`, `year`, `start_time`, `end_time`, `weekday`, `season`, `start_date`, `end_date`, `location_id`, `instructor_id`, `category_id`, `tgp_class_category_id`, `tgp_program_id`, `price`, `total_time`, `program_featured`, `category_featured`, `types`) VALUES
(1, 1, 2012, '16:00:00', '16:45:00', 'Thursday', 'Fall', '2012-09-04', '2012-12-18', 1, 1, 1, 1, 1, 250, 45, 'Y', 'Y', 'Fixed'),
(2, 1, 2012, '10:00:00', '10:45:00', 'Monday', 'Fall', '2012-09-10', '2012-12-17', 1, 1, 1, 1, 1, 250, 45, 'Y', 'Y', 'Fixed'),
(5, 1, 2012, '10:30:00', '11:15:00', 'Tuesday', 'Fall', '2012-09-18', '2013-01-29', 1, 1, 1, 1, 1, 250, 45, 'Y', 'Y', 'Fixed'),
(4, 1, 2012, '13:00:00', '13:45:00', 'Friday', 'Fall', '2012-09-17', '2013-01-28', 1, 1, 1, 1, 1, 250, 45, 'Y', 'Y', 'Fixed'),
(6, 7, 2012, '09:30:00', '10:10:00', 'Thursday', 'Fall', '2012-09-17', '2013-01-28', 1, 1, 1, 1, 1, 350, 40, 'Y', 'Y', 'Fixed'),
(7, 7, 2012, '15:15:00', '16:00:00', 'Sunday', 'Fall', '2012-09-18', '2012-09-18', 0, 0, 1, 1, 1, 450, 0, 'Y', 'Y', 'Fixed'),
(8, 11, 2012, '12:05:00', '12:55:00', 'Saturday', 'Fall', '2012-09-01', '2013-01-18', 0, 0, 12, 12, 5, 300, 0, 'Y', '', 'Fixed'),
(9, 11, 2012, '10:30:00', '11:30:00', 'Wednesday', 'Fall', '2012-09-01', '2013-01-20', 0, 0, 12, 12, 5, 0, 0, 'Y', 'Y', 'Fixed'),
(10, 7, 2013, '08:50:00', '08:40:00', 'Monday', 'Winter', '0000-00-00', '0000-00-00', 1, 1, 1, 1, 1, 145, 0, 'Y', 'Y', 'Fixed'),
(11, 12, 2013, '14:30:00', '14:30:00', 'Monday', 'Winter', '0000-00-00', '0000-00-00', 1, 1, 4, 4, 8, 250, 0, 'N', 'N', 'Fixed'),
(12, 13, 2013, '16:00:00', '16:00:00', 'Wednesday', 'Winter', '0000-00-00', '0000-00-00', 1, 1, 6, 6, 8, 90, 0, 'Y', 'Y', 'Fixed'),
(13, 12, 2013, '16:06:00', '17:06:00', 'Tuesday', 'Winter', '0000-00-00', '0000-00-00', 1, 1, 4, 4, 8, 150, 0, 'Y', 'Y', 'Fixed'),
(14, 13, 2013, '16:15:00', '17:15:00', 'Monday', 'Fall', '2013-02-18', '2013-06-24', 1, 1, 6, 6, 8, 150, 0, 'Y', 'Y', 'Fixed'),
(15, 13, 2013, '06:00:00', '07:30:00', 'Friday', 'Winter', '2013-01-01', '2013-06-01', 1, 1, 6, 6, 8, 140, 0, 'Y', 'Y', 'Fixed'),
(16, 13, 2013, '18:00:00', '19:30:00', 'Tuesday', 'Winter', '2013-01-01', '2013-06-01', 1, 1, 6, 6, 8, 140, 0, 'Y', 'Y', 'Fixed');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_classes_categories`
--

CREATE TABLE IF NOT EXISTS `tgp_classes_categories` (
  `cc_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `program_id` int(11) NOT NULL,
  PRIMARY KEY (`cc_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tgp_classes_categories`
--

INSERT INTO `tgp_classes_categories` (`cc_id`, `title`, `description`, `program_id`) VALUES
(1, 'Mommy & Me', 'Our Mommy & Me program offers classes for children from 12 months to 3 years old. We focus on basic locomotor movements, agility, and positive social interaction among peers. Have a great time while you and your child discover the wonders of movement and   play at The Gym Park. A caregiver or parent participate in the class.', 1),
(2, 'Toddler', 'Toddlers ages 3-5 years old are ready to be part of a group and can play with out the help of a parent or caregiver. Our lessons will continue to develop the necessary motor skills, strength, flexibility and social awareness that is appropriate for this age group.', 1),
(12, 'Open Play', 'kids come whenever they want during the week.', 5),
(4, 'KidFit', 'KidFit is a total fitness program for children and young adults. We use games and fun activities to promote a healthy body and mind.  These exercises focus on cardio-health, flexibility, strength, balance, nutrition, and much more.', 8),
(5, 'Women''s Light-Fit', 'Women’s Light-Fit is a total fitness program for low to medium intensity workouts. This class is perfect for women that are just getting into fitness and exercise. We promote a healthy body and mind with exercises that focus on cardio-health, flexibility, strength, balance, nutrition, and healing.', 8),
(6, 'Men&#39;s Fitness', 'Men&#39;s Fitness is designed for men to increase cardio-health, promote flexibility, strength, balance, and nutrition. We use apparatus and natural body weight to compose our total exercise strategy.', 8),
(7, 'Senior Fit', 'Senior Fit is a total fitness program for over 50''s. We promote a healthy body and mind with exercises that focus on cardio-health, flexibility, strength, balance, nutrition, and healing.', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tgp_emergency_contact`
--

CREATE TABLE IF NOT EXISTS `tgp_emergency_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `relation` enum('Family','Friend') NOT NULL DEFAULT 'Family',
  `homePhone` varchar(20) NOT NULL,
  `cellPhone` varchar(20) NOT NULL,
  `workPhone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='holds the emergency contact for a student' AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tgp_emergency_contact`
--

INSERT INTO `tgp_emergency_contact` (`id`, `student_id`, `name`, `relation`, `homePhone`, `cellPhone`, `workPhone`) VALUES
(7, 16, 'Whitney Saymeyer', 'Family', '', '212.319.1390', '0'),
(12, 21, 'Kattia Salgado', 'Family', '718.902.2102', '917.313.1311', '212319'),
(13, 22, 'Lettie Salgado', 'Friend', '', '133.313.1221', '');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_membership_attributes`
--

CREATE TABLE IF NOT EXISTS `tgp_membership_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membership_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `type` enum('Fixed','Option') NOT NULL DEFAULT 'Fixed',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the attributes for a membership' AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tgp_membership_attributes`
--

INSERT INTO `tgp_membership_attributes` (`id`, `membership_id`, `attribute_id`, `type`, `added_on`) VALUES
(1, 1, 2, 'Fixed', '2012-10-20 03:51:33'),
(2, 1, 1, 'Fixed', '2012-10-20 03:51:33'),
(3, 1, 3, 'Fixed', '2012-10-20 03:51:33'),
(4, 1, 4, 'Fixed', '2012-10-21 01:54:42'),
(5, 1, 5, 'Fixed', '2012-10-21 01:57:01'),
(6, 1, 6, 'Fixed', '2012-10-21 01:58:22'),
(7, 3, 1, 'Fixed', '2012-10-25 01:03:12'),
(8, 3, 2, 'Fixed', '2012-10-25 01:03:24'),
(9, 3, 4, 'Fixed', '2012-10-25 01:04:29'),
(10, 3, 5, 'Fixed', '2012-10-25 01:04:49'),
(11, 3, 7, 'Fixed', '2012-10-25 01:07:02'),
(12, 2, 5, 'Fixed', '2012-10-25 01:08:51'),
(13, 2, 4, 'Fixed', '2012-10-25 01:08:51'),
(14, 2, 2, 'Fixed', '2012-10-25 01:08:51'),
(15, 2, 8, 'Fixed', '2012-10-25 01:08:51'),
(16, 2, 9, 'Fixed', '2012-10-25 01:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_membership_features`
--

CREATE TABLE IF NOT EXISTS `tgp_membership_features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the features provided for membership' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tgp_membership_features`
--

INSERT INTO `tgp_membership_features` (`id`, `title`, `quantity`, `added_on`) VALUES
(1, 'One 9-Week Session of Classes', 1, '0000-00-00 00:00:00'),
(2, 'Free Registration Save $50.00', 1, '0000-00-00 00:00:00'),
(3, '25% off Additional Classes', -25, '0000-00-00 00:00:00'),
(4, '50% off Open Play Packs', -50, '2012-10-21 01:52:57'),
(5, '3 Free Guest Family Open Play Visits', 3, '2012-10-21 01:56:49'),
(6, 'Two Semesters of Classes', 2, '2012-10-21 01:57:54'),
(7, '10% Off Additional Classes', -10, '2012-10-25 01:06:53'),
(8, 'One Semester of Classes', 1, '2012-10-25 01:08:08'),
(9, '15% Off Additional Classes', -15, '2012-10-25 01:09:22');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_membership_plans`
--

CREATE TABLE IF NOT EXISTS `tgp_membership_plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='holds the membership plans available' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tgp_membership_plans`
--

INSERT INTO `tgp_membership_plans` (`id`, `title`, `description`, `added_on`) VALUES
(1, 'Individual', 'This plan is for a single participant.', '2012-10-20 22:13:50'),
(2, 'Family', 'This plan is for up to 5 participants, 2 parents and 3 siblings.', '2012-10-20 22:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_membership_types`
--

CREATE TABLE IF NOT EXISTS `tgp_membership_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL DEFAULT 'Bronze',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the membership types' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tgp_membership_types`
--

INSERT INTO `tgp_membership_types` (`id`, `type`, `added_on`) VALUES
(1, 'Bronze', '0000-00-00 00:00:00'),
(2, 'Silver', '2012-10-20 04:00:00'),
(3, 'Gold', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_memberships`
--

CREATE TABLE IF NOT EXISTS `tgp_memberships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `price` int(11) NOT NULL,
  `active` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='holds the memberships options and their title' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tgp_memberships`
--

INSERT INTO `tgp_memberships` (`id`, `type_id`, `plan_id`, `title`, `price`, `active`) VALUES
(1, 3, 1, 'Individual Gold Member', 1100, '1'),
(2, 2, 1, 'Individual Silver Membership', 600, '1'),
(3, 1, 1, 'Individual Bronze Membership', 300, '1'),
(4, 1, 2, 'Family Bronze Membership', 900, '1'),
(5, 2, 2, 'Family Silver Membership', 1400, '1'),
(6, 3, 2, 'Family Gold Membership', 1800, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_nannies`
--

CREATE TABLE IF NOT EXISTS `tgp_nannies` (
  `nanny_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`nanny_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the nanny for a student' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tgp_nannies`
--

INSERT INTO `tgp_nannies` (`nanny_id`, `student_id`, `name`, `phone`, `dateAdded`) VALUES
(1, 22, 'Martha Aguilar', '980.313.1341', '2013-03-07 02:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_newsletter_categories`
--

CREATE TABLE IF NOT EXISTS `tgp_newsletter_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the categories for the newsletters' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tgp_newsletter_categories`
--

INSERT INTO `tgp_newsletter_categories` (`id`, `filter_id`, `title`, `description`, `added_on`, `modified`) VALUES
(1, 0, 'All', 'This category should hold all the members in the newsletter system.', '2012-11-21 03:25:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_newsletter_filters`
--

CREATE TABLE IF NOT EXISTS `tgp_newsletter_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the filters for the newsletters' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tgp_newsletter_filters`
--

INSERT INTO `tgp_newsletter_filters` (`id`, `title`, `description`) VALUES
(1, 'Class', 'This filter allows you to choose a class to collect all its participants email information and send them an email or newsletter. '),
(3, 'Class Title', 'This filter allows you send a newsletter or email to all the people are sign up to the classes that belong a class title.'),
(4, 'Time', 'This filter helps you send a newsletter to a group of people who are taking or took classes at a specific time range.'),
(5, 'Day', 'This filter lets you target people who take classes in a specific day or days.'),
(6, 'Age', 'This filter allows you target a specific age group and it collects that groups and sends it to them.'),
(7, 'Month', 'This filters targets people whose birthdays are coming up from now to a specific x amount of months and sends the selected newsletter to them.'),
(8, 'Category', 'This filter targets all the people who are sign up for the classes that belong to a category.'),
(9, 'Program', 'This filter allows you to target people who enrolled in the classes that belong to a program.'),
(10, 'Newsletter Categories', 'This filter lets you pick all the members that are in the selected categories.');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_newsletter_sent`
--

CREATE TABLE IF NOT EXISTS `tgp_newsletter_sent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newsletter_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `sent_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the newsletter sent to the member within a category' AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tgp_newsletter_sent`
--

INSERT INTO `tgp_newsletter_sent` (`id`, `newsletter_id`, `category_id`, `member_id`, `sent_on`) VALUES
(1, 1, 1, 2, '2012-11-25 23:21:01'),
(2, 1, 1, 15, '2012-11-25 23:21:03'),
(3, 1, 1, 18, '2012-11-25 23:21:06'),
(4, 1, 1, 14, '2012-11-25 23:21:09'),
(5, 1, 1, 1, '2012-11-25 23:21:11'),
(6, 1, 1, 2, '2012-11-25 23:32:45'),
(7, 1, 1, 15, '2012-11-25 23:32:47'),
(8, 1, 1, 18, '2012-11-25 23:32:50'),
(9, 1, 1, 14, '2012-11-25 23:32:52'),
(10, 1, 1, 1, '2012-11-25 23:32:55'),
(11, 1, 1, 2, '2012-11-27 01:18:16'),
(12, 1, 1, 2, '2012-11-27 01:19:05'),
(13, 1, 1, 2, '2012-11-27 01:22:44'),
(14, 1, 1, 2, '2012-11-27 04:13:50'),
(15, 1, 1, 2, '2012-11-28 02:23:07'),
(16, 1, 1, 19, '2012-11-28 02:23:10');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_newsletter_user_categories`
--

CREATE TABLE IF NOT EXISTS `tgp_newsletter_user_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modefied` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tgp_newsletter_user_categories`
--

INSERT INTO `tgp_newsletter_user_categories` (`id`, `user_id`, `category_id`, `added_on`, `modefied`, `status`) VALUES
(1, 2, 1, '2012-11-25 04:05:12', '0000-00-00 00:00:00', '1'),
(2, 15, 1, '2012-11-27 01:16:15', '0000-00-00 00:00:00', '0'),
(3, 16, 1, '2012-11-25 21:28:56', '0000-00-00 00:00:00', '0'),
(4, 18, 1, '2012-11-27 01:17:11', '0000-00-00 00:00:00', '0'),
(5, 14, 1, '2012-11-27 01:17:22', '0000-00-00 00:00:00', '0'),
(6, 17, 1, '2012-11-25 06:33:43', '0000-00-00 00:00:00', '0'),
(7, 1, 1, '2012-11-27 01:17:28', '0000-00-00 00:00:00', '0'),
(8, 19, 1, '2012-11-27 19:39:27', '0000-00-00 00:00:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_newsletter_users`
--

CREATE TABLE IF NOT EXISTS `tgp_newsletter_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `modefied` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tgp_newsletters`
--

CREATE TABLE IF NOT EXISTS `tgp_newsletters` (
  `newsletter_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `message` longtext NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`newsletter_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the newsletters from the gym park' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tgp_newsletters`
--

INSERT INTO `tgp_newsletters` (`newsletter_id`, `title`, `message`, `added_on`, `modified`) VALUES
(1, 'Fall 2012', '&lt;h1&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif; font-size: medium; color: #008000;&quot;&gt;Fall 2012&lt;/span&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif; font-size: medium;&quot;&gt; &lt;br /&gt;&lt;/span&gt;&lt;/h1&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif; font-size: medium;&quot;&gt;Welcome back to all of you. I am glad to see you all back. This semester is full of surprises and hope that you will enjoy it.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif; font-size: medium;&quot;&gt;Thank you for coming back and hope you have a blast in our classes.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif; font-size: medium;&quot;&gt;Thank you and welcome once again!&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif; font-size: medium;&quot;&gt;&lt;em&gt;The Gym Park&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif; font-size: medium;&quot;&gt;81 Oak Street&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif; font-size: medium;&quot;&gt;Greenpoint, NY 11222&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;a title=&quot;the gym park website&quot; href=&quot;http://www.thegympark.com&quot;&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif; font-size: medium;&quot;&gt;thegympark.com&lt;/span&gt;&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif; font-size: medium;&quot;&gt;(718) 349-6627&lt;/span&gt;&lt;/p&gt;', '2012-11-17 00:43:10', '0000-00-00 00:00:00'),
(2, 'Winter 2013', '<p><span style="font-size: x-large; font-family: times new roman,times;"><strong>Winter 2013</strong></span></p>\r\n<p>&nbsp;I hope you had great holidays and are ready for the new semester for gymnastics. We have a range of classes, <a href="http://www.thegympark.com">click here</a> to visit our site for more information</p>', '2012-11-20 02:04:21', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_packages_classes_junction`
--

CREATE TABLE IF NOT EXISTS `tgp_packages_classes_junction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the connection between class and packages' AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tgp_packages_classes_junction`
--

INSERT INTO `tgp_packages_classes_junction` (`id`, `package_id`, `class_id`) VALUES
(1, 2, 11),
(2, 4, 11),
(3, 1, 11),
(4, 5, 11),
(5, 3, 11),
(6, 6, 11),
(7, 11, 11),
(8, 7, 11),
(9, 9, 11),
(10, 10, 11),
(11, 8, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tgp_parents`
--

CREATE TABLE IF NOT EXISTS `tgp_parents` (
  `parent_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `homePhone` varchar(20) NOT NULL,
  `cellPhone` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `workPhone` varchar(20) NOT NULL,
  PRIMARY KEY (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the parents for a student' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tgp_parents`
--

INSERT INTO `tgp_parents` (`parent_id`, `student_id`, `name`, `homePhone`, `cellPhone`, `email`, `workPhone`) VALUES
(10, 16, 'Robert Saymeyer', '212.490.1312', '', 'robert.saymeyer@gmail.com', ''),
(9, 16, 'Stacey Saymeyer', '212.313.1431', '', 'stacey.saymeyer@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_programs`
--

CREATE TABLE IF NOT EXISTS `tgp_programs` (
  `program_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text,
  PRIMARY KEY (`program_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tgp_programs`
--

INSERT INTO `tgp_programs` (`program_id`, `title`, `description`) VALUES
(1, 'Infants & Toddlers', ''),
(2, 'Flip', ''),
(3, 'Gymnastics', ''),
(4, 'Cheerleading', ''),
(5, 'Open Play', ''),
(6, 'Parkour', ''),
(8, 'Fitness', ''),
(9, 'Physical Education', ''),
(10, 'Silks', 'Enjoy a beautiful, elegant  experience working out on the Aerial Silks at The Gym Park. Let our experienced instructors guide you through the world of Silks. Enhance your flexibility, strength, stamina, and elegance through a series of challenging and enjoyable exercise and sequences. ');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_student_contact_info`
--

CREATE TABLE IF NOT EXISTS `tgp_student_contact_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `homePhone` varchar(20) NOT NULL,
  `cellPhone` varchar(20) NOT NULL,
  `email` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='holds the immidiate contact info of an adult student' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tgp_student_contact_info`
--

INSERT INTO `tgp_student_contact_info` (`id`, `student_id`, `homePhone`, `cellPhone`, `email`) VALUES
(1, 21, '718.313.1312', '917.901.9012', 'olympiamarblenyc@gmail.com'),
(2, 22, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_student_school`
--

CREATE TABLE IF NOT EXISTS `tgp_student_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `grade` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tgp_student_school`
--

INSERT INTO `tgp_student_school` (`id`, `student_id`, `name`, `grade`) VALUES
(2, 22, 'PS 10', '4th'),
(3, 21, 'PS 10', '12th'),
(4, 16, '92Y Nursery', 'K');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_students`
--

CREATE TABLE IF NOT EXISTS `tgp_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first` varchar(50) NOT NULL,
  `M` char(1) NOT NULL,
  `last` varchar(70) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('M','F') NOT NULL DEFAULT 'M',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the students immediate information' AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tgp_students`
--

INSERT INTO `tgp_students` (`id`, `first`, `M`, `last`, `dob`, `gender`) VALUES
(16, 'Syrus', '', 'Saymeyer', '2011-03-01', 'M'),
(21, 'Yovanni', '', 'Aguilar', '1977-12-13', 'M'),
(22, 'Mathew', '', 'Galan', '2004-09-07', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_user_memberships`
--

CREATE TABLE IF NOT EXISTS `tgp_user_memberships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `membership_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='holds the link of a member and its membership' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tgp_users`
--

CREATE TABLE IF NOT EXISTS `tgp_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uName` varchar(100) NOT NULL,
  `uEmail` varchar(150) NOT NULL,
  `uPswd` varchar(32) DEFAULT NULL,
  `type` enum('R','A','E','I','N') NOT NULL DEFAULT 'R',
  `lastLogIn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the users' AUTO_INCREMENT=20 ;

--
-- Dumping data for table `tgp_users`
--

INSERT INTO `tgp_users` (`id`, `uName`, `uEmail`, `uPswd`, `type`, `lastLogIn`) VALUES
(1, 'Nicole Minichiello', 'vincenzamarie@gmail.com', '5b85ba3e3d7c2a8291442083ca5aa610', 'R', '2013-02-28 23:07:23'),
(2, 'Darwin Salgado', 'darsal09@yahoo.com', '5b85ba3e3d7c2a8291442083ca5aa610', 'A', '2013-03-30 04:22:15'),
(14, 'Michael Velasquez', 'velasquez_michael@yahoo.es', 'b8d60f50b9c0e7eede834e5626ea993b', 'E', '0000-00-00 00:00:00'),
(15, 'Kattia Salgado', 'puny07@aol.com', '3b61a31cf0856c5b1411c427d9de5e5f', 'R', '2012-09-27 01:54:48'),
(16, 'Lettie Salgado', 'leticia_salgado@gmail.com', '5b85ba3e3d7c2a8291442083ca5aa610', 'R', '2012-09-27 02:16:31'),
(17, 'Michael Velasquez', 'michael_velasquez@yahoo.es', '5b85ba3e3d7c2a8291442083ca5aa610', 'R', '2012-10-20 18:23:27'),
(18, 'Lettie Salgado', 'leticia_velasquez@yahoo.com', '5b85ba3e3d7c2a8291442083ca5aa610', 'R', '2012-11-04 18:41:50');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
