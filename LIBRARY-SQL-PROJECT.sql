/* Command to create database db_Library */

CREATE DATABASE db_Library
GO

/* Command to use db_Libary and commande to execute GO */
USE db_Library
GO

/*Command to create table LIBRARY_BRANCH */
CREATE TABLE LIBRARY_BRANCH (
	BranchID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	BranchName VARCHAR(100) NOT NULL,
	BranchAddress VARCHAR(100) NOT NULL
);

/*Data entry into table LIBRARY BRANCH */
INSERT INTO LIBRARY_BRANCH
(BranchName,BranchAddress)
VALUES
('Central Library Branch','101 E Central Blvd, Orlando, FL 32801'),
('SharpsTown Library Branch','8325 Los Alamos Road, Orlando, FL 32819'),
('North Orange Library Branch','7255 Della Dr, Orlando, FL 32819'),
('East Orange Library Branch','7391 W Colonial Dr, Orlando, FL 32818'),
('South Orange Library Branch','1211 E Semoran Blvd, Apopka, FL 32703'),
('West Orrange Library Branch','1702 Deerfield Blvd, Orlando, FL 32837')
;

/* Command to create table Publisher */
CREATE TABLE PUBLISHER(
	PublisherName VARCHAR(100) PRIMARY KEY NOT NULL,
	PublisherAddress VARCHAR(100) NOT NULL,
	Phone VARCHAR(100) NOT NULL
);

/*Command to create table BOOKS */
CREATE TABLE BOOKS(
	BookID INT PRIMARY KEY NOT NULL IDENTITY (10,1),
	Title VARCHAR(100) NOT NULL,
	PublisherName VARCHAR(100) NOT NULL FOREIGN KEY REFERENCES  PUBLISHER(PublisherName)
);

/*Data entry into table Publisher */
INSERT INTO PUBLISHER
(PublisherName,PublisherAddress,Phone)
VALUES
('Oxford University Press','2001 Evans Rd, Cary, NC 27513','(800)-445-9714'),
('John Wiley & Sons Publishing','Somerset, NJ 08873','(800)-567-4896'),
('Penguin Random House','1745 Broadway, New York, NY 10019','(800)-789-1234'),
('HarperCollins Publishers','195 Broadway, New York, NY 10007','(212) 207-7000'),
('Macmillan Publishers ','Flatiron Building, 175 5th Ave, New York, NY 10010','(212) 226-7521'),
('Kodansha Publishing','451 Park Ave S 7th floor, New York, NY 10022','(917) 322-6200'),
('Simon & Schuster Publishers','1230 6th Ave, New York, NY 10020','(212) 698-7000'),
('Bonnier Books','251 Park Ave S, New York, NY 10010','(844) 321-0237'),
('Egmont Books','1 Nicholas Road London W11 4AN','+44 (0) 203 220 0400'),
('Bantam Spectra Publishing','1745 Broadway, New York, NY 10019','(212) 782-9000')
;

/*Data entry into table BOOKS */
INSERT INTO BOOKS
(Title,PublisherName)
VALUES
('Eyes of the Dragon','Bantam Spectra Publishing'),
('The Green Mile','HarperCollins Pubishers'),
('The Great Gatsby','Bonnier Books'),
('War and Peace ','Penguin Random House'),
('To Kill a Mockingbird','Penguin Random House'),
('The Canterbury Tales ','Engmont Books'),
('20,000 Leagues Under the Sea','Oxford University Press'),
('The Hobbit','Bantam Spectra Publishing'),
('The Lord of the Rings','Bantam Spectra Publishing'),
('Animal Farm','Penguin Random House'),
('Lord of the Flies','Penguin Random House'),
('The Complete Sherlock Homes','Egmont Books'),
('The Stand','Bantam Spectra Publishing'),
('The Lion,Witch, and the Wardrobe','Egmont Books')
;

/* Data entry into table BOOKS */
INSERT INTO BOOKS
(Title,PublisherName)
VALUES
('A Game of Thrones','Bantam Spectra Publishing'),
('A Clash of Kings','Bantam Spectra Publishing'),
('A Storm of Swords','Bantam Spectra Publishing'),
('A Feast of Crows','Bantam Spectra Publishing'),
('A Dance with Dragons','Bantam Spectra Publishing'),
('The Winds of Winter','Bantam Spectra Publishing'),
('A Dream of Spring','Bantam Spectra Publishing')
;
/* Data entry into table BOOKS */
INSERT INTO BOOKS
(Title,PublisherName)
VALUES
('A Brief History of Time','Egmont Books'),
('The Legend of the Overfiend','Kodansha Publishing'),
('Battle Royale','Kodansha Publishing'),
('Lone Wolf & Cub','Kodansha Publishing'),
('Berserk','Kodansha Publishing'),
('One Piece','Kodansha Publishing'),
('The Lost Tribe','Penguin Random House')
;

/*Data entry into table BOOKS */
INSERT INTO BOOKS
(Title, PublisherName)
VALUES
('New Perspectives HTML5 and CSS3: Comprehensive ','Oxford University Press'),
('Microsoft Visual C#: An Introduction to Object-Oriented Programming ','Oxford University Press'),
('Database Systems: Introduction to Databases and Data Warehouses','Oxford University Press'),
('CompTIA Project+ Study Guide: Exam PK0-004','Oxford University Press'),
('The Self-Taught Programmer: The Definitive Guide to Programming Profesionally','Oxford University Press')
;

/*Data entry into table BOOKS */
INSERT INTO BOOKS
(Title,PublisherName)
VALUES
('A Confederacy of Dunces','Penguin Random House'),
('Through the Looking Glass','Egmont Books')
;

/* Command to create table BOOK_AUTHORS */
CREATE TABLE BOOK_AUTHORS(
	BookID INT NOT NULL FOREIGN KEY REFERENCES BOOKS(BookID),
	AuthorName VARCHAR(100) NOT NULL
);

/* Data entry into table BOOK_AUTHORS */
INSERT INTO BOOK_AUTHORS
(BookID,AuthorName)
VALUES
(10,'Stephen King'),
(13,'Stephen King'),
(14,'F. Scott Fitzgerald'),
(15,'Leo Tolsky'),
(16,'Nelle Harper Lee'),
(17,'Geoffrey Chaucer'),
(18,'Jules Verne'),
(19,'J.R.R. Tolkien'),
(20,'J.R.R. Tolkien'),
(21, 'George Orwell'),
(22, 'William Golding'),
(23, 'Sir Arthur Conan Doyle'),
(24, 'Stephen King'),
(25, 'C.S. Lewis'),
(26, 'George R.R. Martin'),
(27, 'George R.R. Martin'),
(28, 'George R.R. Martin'),
(29, 'George R.R. Martin'),
(30, 'George R.R. Martin'),
(31, 'George R.R. Martin'),
(32, 'George R.R. Martin'),
(33, 'Stephen Hawking'),
(34, 'Hideki Takayama'),
(35, 'Koushun Takami'),
(36, 'Kazuo Koike'),
(37,'Kentaro Miura'),
(38,'Eiichiro Oda'),
(39,'Mark Lee'),
(44,'Patrick M. Carey'),
(45,'Joyce Farrell'),
(46,'Nenad Jukic'),
(47,'Kim Heldman'),
(48,'Cory Althoff'),
(49,'John Kennedy Toole'),
(50,'Lewis Carroll')
;

/* Command to create table BOOK_COPIES */
CREATE TABLE BOOK_COPIES (
	BookID INT NOT NULL FOREIGN KEY REFERENCES BOOKS(BookID),
	BranchID INT NOT NULL FOREIGN KEY REFERENCES LIBRARY_BRANCH(BranchID),
	Number_of_Copies INT NOT NULL
);

/*Data entry into BOOK_COPIES */
INSERT INTO BOOK_COPIES
(BookID, BranchID,Number_of_Copies)
VALUES
(10,1,2),
(13,1,2),
(14,1,2),
(17,1,2),
(18,1,2),
(19,1,2),
(20,1,2),
(21,1,2),
(22,1,2),
(23,1,2),
(24,1,2),
(44,1,2),
(45,1,2),
(46,1,2),
(47,1,2),
(48,1,2),
(25,2,2),
(26,2,2),
(27,2,2),
(28,2,2),
(29,2,2),
(30,2,2),
(31,2,2),
(32,2,2),
(33,2,2),
(39,2,2),
(33,3,2),
(34,3,2),
(35,3,2),
(36,3,2),
(37,3,2),
(38,3,2),
(10,3,2),
(13,3,2),
(16,3,2),
(18,3,2),
(15,4,2),
(13,4,2),
(17,4,2),
(18,4,2),
(19,4,2),
(15,4,2),
(21,4,2),
(22,4,2),
(23,4,2),
(24,4,2),
(26,5,3),
(27,5,3),
(28,5,3),
(29,5,3),
(30,5,3),
(31,5,3),
(32,5,3),
(22,5,2),
(34,5,2),
(44,5,2),
(45,6,3),
(46,6,3),
(47,6,3),
(48,6,3),
(49,6,3),
(50,6,3),
(18,6,3),
(22,6,2),
(25,6,2),
(15,6,2)
;

/* Command to create table BORROWER */
CREATE TABLE BORROWER (
	CardNo INT PRIMARY KEY NOT NULL IDENTITY (100,1),
	Borrower_Name VARCHAR(100) NOT NULL,
	Borrower_Address VARCHAR(100) NOT NULL,
	Borrower_Phone VARCHAR(100) NOT NULL
);

/* Data entry into table BORROWER */
INSERT INTO BORROWER
(Borrower_Name,Borrower_Address,Borrower_Phone)
VALUES
('Joe Alderman','100 E. Michigan Street, Apt #2, Orlando, FL 32819','407-625-9788'),
('Maisel Rosewater','2325 W. Highland Road,Orlando, FL 32801','321-880-5961'),
('Robert Frost','223 E. Concord Street, Orlando, FL 32801','407-235-7111'),
('Barry Allen', '7777 Haste Lane, Speedsville, FL 31919','321-888-9999'),
('Clark Kent','1111 Fortress Solitude Street, Metropolis, FL 31101','407-765-3768'),
('Diana Prince','3696 Olympia Lane Ft. Lauderdale, FL 32221','386-678-2135'),
('Peter Parker','2829 Broadway Road Miami, FL 32111','386-789-2152'),
('William Wallace','98 Grand Street Port Orange, FL 32127','317-242-6789'),
('Roger Stapleton','8082 West Devon Street Hollywood, FL 33025','521-336-7878'),
('Alfred Pennyworth','42 Manchester St. Orlando, FL 32839','321-768-2436'),
('Jack Hyde','9678 Dunbar St. Orlando, FL 32822','407-896-5326'),
('George Chaucer','9 Canterbury Street Lakeland, FL 33813','521-368-2931'),
('Andre Toulon','98 Lafayette Dr. Orlando, FL 32811','407-860-1945'),
('Rocky Balbola','52 Rockland St. Orlando, FL 32811','321-867-3161'),
('Randall Duke','7565 Gates Circle Orlando, FL 32839','380-857-3796'),
('Claire Bell','9618 Jennings Ave. Orlando, FL 32822','786-943-8915'),
('Cedric Ibarra','835 Schoolhouse Court Orlando, FL 32835','312-537-9381'),
('Humberto Weber','840 E. Center St. Orlando, FL 32818','313-965-5618'),
('Jarvis Baird','189 Elmwood Lane Orlando, FL 32810','384-365-2310'),
('Maxine Bowen','105 Lake View Ave. Orlando, FL 32811','324-215-9074'),
('Vincent Horne','8591 North Street Casselberry, FL 32707','316-656-6184'),
('Ron Petersen','223 W. Philmont St. Winter Park, FL 32792','368-816-1742'),
('Prince Norton','9889 W. Rockwell St. Orlando, FL 32818','302-529-6494'),
('Mickey Huber','9492 Sunbeam Street Orlando, FL 32822','407-714-8405'),
('Jimmy Tran','752 Bayberry Drive Orlando, FL 32818','404-525-2078'),
('John Harker','6981 Lucas Avenue Orlando, FL 32819','407-966-0799')
;

/* Command to create table BOOK_LOANS */
CREATE TABLE BOOK_LOANS (
	BookID INT NOT NULL FOREIGN KEY REFERENCES BOOKS(BookID),
	BranchID INT NOT NULL FOREIGN KEY REFERENCES LIBRARY_BRANCH(BranchID),
	CardNo INT NOT NULL FOREIGN KEY REFERENCES BORROWER(CardNo),
	DateOut date NOT NULL,
	DateDue date NOT NULL
);

/* Data entry into table BOOK_LOANS */
INSERT INTO BOOK_LOANS 
(BookID,BranchID,CardNo,DateOut,DateDue)
VALUES
(13,1,107, '04-27-2019','05-27-2019'),
(14, 1,110,'04-27-2019','05-27-2019'),
(34, 3,124, '04-28-2019','05-28-2019'),
(35,3,124, '04-28-2019','05-28-2019'),
(10,1,100, '04-29-2019','05-29-2019'),
(50,1,119, '04-29-2019','05-29-2019'),
(39,2,101,'04-29-2019','05-29-2019'),
(23,2,103,'04-29-2019','05-29-2019'),
(18,2,122,'04-29-2019','05-29-2019'),
(22,2,117,'04-29-2019','05-29-2019'),
(15,2,120,'04-29-2019','05-29-2019'),
(17,2,118,'04-29-2019','05-29-2019'),
(19,3,116,'05-01-2019','06-01-2019'),
(20,3,116,'05-01-2019','06-01-2019'),
(23,3,105,'05-01-2019','06-01-2019'),
(33,3,108,'05-01-2019','06-01-2019'),
(24,4,121,'05-15-2019','06-15-2019'),
(18,4,115,'05-15-2019','06-15-2019'),
(26,5,106,'05-25-2019','06-25-2019'),
(27,5,106,'05-25-2019','06-25-2019'),
(28,5,106,'05-25-2019','06-25-2019'),
(29,5,106,'05-25-2019','06-25-2019'),
(30,5,106,'05-25-2019','06-25-2019'),
(31,5,106,'05-25-2019','06-25-2019'),
(32,5,106,'05-25-2019','06-25-2019'),
(44,6,125,'05-28-2019','06-28-2019'),
(45,6,125,'05-28-2019','06-28-2019'),
(46,6,125,'05-28-2019','06-28-2019'),
(47,6,125,'05-28-2019','06-28-2019'),
(48,6,125,'05-28-2019','06-28-2019'),
(49,6,125,'05-28-2019','06-28-2019')
;

/* BEGIN STORED PROCEDURES FOR DATABASE LIBRARY */

/* CREATE STORED PROCEDURES THAT WILL QUERY FOR EACH OF THE FOLLOWING QUESTIONS: */

/* 1.) How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"? */

	/* Query Code to build towards the called procedure */
	SELECT 
	a1.Number_of_Copies,a2.BranchName,a3.Title
	FROM BOOK_COPIES a1
	INNER JOIN LIBRARY_BRANCH a2 ON a1.BranchID = a1.BranchID
	INNER JOIN BOOKS a3 ON a3.BookID = a1.BookID
	WHERE BranchName ='SharpsTown Library Branch' AND Title = 'The Lost Tribe'
	;
	GO

	/* Called Procedure for Question 1: */
	CREATE PROCEDURE dbo.uspGetBookInfo1 @BranchName nvarchar(100) = NULL, @Title nvarchar(100) = NULL
	AS 
	SELECT 
	a1.Number_of_Copies,a2.BranchName,a3.Title
	FROM BOOK_COPIES a1
	INNER JOIN LIBRARY_BRANCH a2 ON a1.BranchID = a1.BranchID
	INNER JOIN BOOKS a3 ON a3.BookID = a1.BookID
	WHERE BranchName = ISNULL(@BranchName,BranchName) AND Title = ISNULL(@Title,Title)
	GO

	/* Execute command to test Called Procedure */
	EXECUTE dbo.uspGetBookInfo1 @BranchName = 'SharpsTown Library Branch', @Title = 'The Lost Tribe'
   
/* 2.) How many copies of the book titled "The Lost Tribe" are owned by each library branch? */

	/* Query to build towards called procedure */
	SELECT
	a1.Number_of_Copies,a2.BranchName,a3.Title
	FROM BOOK_COPIES a1
	INNER JOIN LIBRARY_BRANCH a2 ON a1.BranchID = a1.BranchID
	INNER JOIN BOOKS a3 ON a3.BooKID = a1.BookID
	WHERE Title = 'The Lost Tribe'
	GO

	/* Called Procedure for Question 2: */
	CREATE PROCEDURE dbo.uspGetBookInfo2 @Title nvarchar(100) = NULL
	AS
	SELECT
	a1.Number_of_Copies, a2.BranchName,a3.Title
	FROM BOOK_COPIES a1
	INNER JOIN LIBRARY_BRANCH a2 ON a1.BranchID = a1.BranchID
	INNER JOIN BOOKS a3 ON a3.BookID = a1.BookID
	WHERE Title = ISNULL(@Title,Title)
	GO

	/* Execute command to test Called Procedure */
	EXECUTE dbo.uspGetBookInfo2 @Title = 'The Lost Tribe'
	GO
		
   
/* 3.) Retrieve the names of all borrowers who do not have any books checked out. */

	/* Query to build towards Called Procedure */
	SELECT
	Borrower_Name AS 'No Books Checked Out' FROM BORROWER
	LEFT JOIN BOOK_LOANS 
	ON BORROWER.CardNo = BOOK_LOANS.CardNo
	WHERE BookID IS NULL
	GO

	/* Called Procedure for Question 3: */
	CREATE PROCEDURE dbo.uspGetBookInfo3
	AS
	SELECT Borrower_Name AS 'No Books Checked Out' FROM BORROWER
	LEFT JOIN BOOK_LOANS 
	ON BORROWER.CardNo = BOOK_LOANS.CardNo
	WHERE BookID IS NULL
	GO

	/* EXECUTE PROCEDURE */
	EXECUTE dbo.uspGetBookInfo3
	GO

 
/* 4.) For each book that is loaned out from the "Sharpstown" branch and whose Due Date is today, retrieve the book title, the borrower's name, and the borrower's address. */
		/* QUERY */

		SELECT 
		Title AS 'Book Name', Borrower_Name AS 'Borrower Name', Borrower_Address AS 'Borrower Address'
		FROM BOOK_LOANS a1
		INNER JOIN BOOKS a2 ON a2.BookID = a1.BookID
		INNER JOIN LIBRARY_BRANCH a3 ON a3.BranchID = a1.BranchID
		INNER JOIN BORROWER a4 ON a4.CardNo = a1.CardNo
		WHERE BranchName = 'SharpsTown Library Branch' AND DateDue = '05-29-2019'
		GO

		/* CREATE PROCEDURE */
		CREATE PROCEDURE dbo.uspGetBookInfo4 
		AS
		SELECT 
		Title AS 'Book Name', Borrower_Name AS 'Borrower Name', Borrower_Address AS 'Borrower Address'
		FROM BOOK_LOANS a1
		INNER JOIN BOOKS a2 ON a2.BookID = a1.BookID
		INNER JOIN LIBRARY_BRANCH a3 ON a3.BranchID = a1.BranchID
		INNER JOIN BORROWER a4 ON a4.CardNo	= a1.CardNo
		WHERE BranchName = 'SharpsTown Library Branch' AND DateDue = '05-29-2019'
		GO

		EXECUTE dbo.uspGetBookInfo4 
		GO
   
/* 5.) For each library branch, retrieve the branch name and the total number of books loaned out from that branch. */

		/* QUERY */
		SELECT BranchName, COUNT(*) AS 'Books Loaned Out' 
		FROM LIBRARY_BRANCH a1
		INNER JOIN BOOK_LOANS a2 ON a2.BranchID = a1.BranchID
		GROUP BY BranchName HAVING COUNT(*) >= 0
		GO

		/* CREAT PROCEDURE */
		CREATE PROCEDURE dbo.uspGetBookInfo5 
		AS 
		SELECT BranchName,COUNT(*) AS 'Books Loaned Out'
		FROM LIBRARY_BRANCH a1
		INNER JOIN BOOK_LOANS a2 ON a2.BranchID = a1.BranchID
		GROUP BY BranchName HAVING COUNT(*) >= 0
		GO

		EXECUTE dbo.uspGetBookInfo5
		GO
   
/* 6.) Retrieve the names, addresses, and the number of books checked out for all borrowers who have more than five books checked out. */
		/* QUERY */
		SELECT Borrower_NAME AS 'Borrower Name',Borrower_Address AS 'Borrower Address', COUNT(*) AS 'Books Checked Out' FROM BORROWER a1
		INNER JOIN BOOK_LOANS a2 ON a2.CardNo = a1.CardNo
		GROUP BY Borrower_Name,Borrower_Address HAVING COUNT(*) > 5
		GO

		/* Stored Procedure */
		CREATE PROCEDURE dbo.uspGetBookInfo6
		AS
		SELECT Borrower_Name AS 'Borrower Name', Borrower_Address AS 'Borrower Address', COUNT(*) AS 'Books Checked Out' FROM BORROWER a1
		INNER JOIN BOOK_LOANS a2 ON a2.CardNo = a1.CardNo
		GROUP BY Borrower_Name,Borrower_Address HAVING COUNT(*) > 5
		GO

		EXECUTE dbo.uspGetBookInfo6
		GO

/* 7.) For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central". */
		SELECT Title, COUNT(*) AS 'Number of Copies' 
		FROM BOOK_COPIES a1
		INNER JOIN BOOK_LOANS a2 ON a2.BookID = a1.BookID
		INNER JOIN BOOK_AUTHORS a3 ON a3.BookID = a1.BookID
		INNER JOIN LIBRARY_BRANCH a4 ON a4.BranchID = a1.BranchID
		INNER JOIN BOOKS a5 ON a5.BookID = a1.BookID
		WHERE AuthorName = 'Stephen King' AND BranchName = 'Central Library Branch'
		GROUP BY Title HAVING COUNT(*) > 0
		GO

		/* STORED PROCEDURE */
		CREATE PROCEDURE dbo.uspGetBookInfo7
		AS
		SELECT Title, COUNT(*) AS 'Number of Copies'
		FROM BOOK_COPIES a1
		INNER JOIN BOOK_LOANS a2 ON a2.BookID = a1.BookID
		INNER JOIN BOOK_AUTHORS a3 ON a3.BookID = a1.BookID
		INNER JOIN LIBRARY_BRANCH a4 ON a4.BranchID = a1.BranchID
		INNER JOIN BOOKS a5 ON a5.BookID = a1.BookID
		WHERE AuthorName = 'Stephen King' AND BranchName = 'Central Library Branch'
		GROUP BY Title HAVING COUNT(*) > 0
		GO

		/* EXECUTE PROCEDURE */
		EXECUTE dbo.uspGetBookInfo7
		GO




 