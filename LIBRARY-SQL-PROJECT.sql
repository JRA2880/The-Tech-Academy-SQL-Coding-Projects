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
('Central Library Branch','101 E Central Blvd, Orlando, FL 32801'),                          --1--
('SharpsTown Library Branch','8325 Los Alamos Road, Orlando, FL 32819'),                     --2--
('North Orange Library Branch','7255 Della Dr, Orlando, FL 32819'),                          --3--
('East Orange Library Branch','7391 W Colonial Dr, Orlando, FL 32818'),                      --4--
('South Orange Library Branch','1211 E Semoran Blvd, Apopka, FL 32703'),                     --5--
('West Orange  Library Branch', '1625 Beulah Rd, Winter Garden, FL 34787')                   --6--
;

/* Command to create table Publisher */
CREATE TABLE PUBLISHER(
	PublisherName VARCHAR(100) PRIMARY KEY NOT NULL,
	PublisherAddress VARCHAR(100) NOT NULL,
	Phone VARCHAR(100) NOT NULL
);

/*Data entry into table Publisher */
INSERT INTO PUBLISHER
(PublisherName,PublisherAddress,Phone)
VALUES
('Oxford University Press','2001 Evans Rd, Cary, NC 27513','(800)-445-9714'),                 --1--
('Penguin Random House','1745 Broadway, New York, NY 10019','(800)-789-1234'),                --2--
('Kodansha Publishing','451 Park Ave S 7th floor, New York, NY 10022','(917) 322-6200'),      --3--
('Egmont Books','1 Nicholas Road London W11 4AN','+44 (0) 203 220 0400'),                     --4--
('Bantam Spectra Publishing','1745 Broadway, New York, NY 10019','(212) 782-9000')            --5--
;

/*Command to create table BOOKS */
CREATE TABLE BOOKS(
	BookID INT PRIMARY KEY NOT NULL IDENTITY (10,1),
	Title VARCHAR(100) NOT NULL,
	PublisherName VARCHAR(100) NOT NULL FOREIGN KEY REFERENCES  PUBLISHER(PublisherName)
);

/*Data entry into table BOOKS */
INSERT INTO BOOKS
(Title,PublisherName)
VALUES
('Eyes of the Dragon','Bantam Spectra Publishing'),                                                           --10--
('The Green Mile','Bantam Spectra Publishing'),                                                               --11--
('The Great Gatsby','Penguin Random House'),                                                                  --12--
('War and Peace ','Penguin Random House'),                                                                    --13--
('To Kill a Mockingbird','Penguin Random House'),                                                             --14--
('The Canterbury Tales ','Egmont Books'),                                                                     --15--
('20,000 Leagues Under the Sea','Oxford University Press'),                                                   --16--
('The Hobbit','Bantam Spectra Publishing'),                                                                   --17--
('The Lord of the Rings','Bantam Spectra Publishing'),                                                        --18--
('Animal Farm','Penguin Random House'),                                                                       --19--
('Lord of the Flies','Penguin Random House'),                                                                 --20--
('The Complete Sherlock Homes','Egmont Books'),                                                               --21--
('Dune','Bantam Spectra Publishing'),                                                                         --22--
('The Lion,Witch, and the Wardrobe','Egmont Books'),                                                          --23--
('A Game of Thrones','Bantam Spectra Publishing'),                                                            --24--
('A Clash of Kings','Bantam Spectra Publishing'),                                                             --25--
('A Storm of Swords','Bantam Spectra Publishing'),                                                            --26--
('A Feast of Crows','Bantam Spectra Publishing'),                                                             --27--
('A Dance with Dragons','Bantam Spectra Publishing'),                                                         --28--
('The Winds of Winter','Bantam Spectra Publishing'),                                                          --29--
('A Dream of Spring','Bantam Spectra Publishing'),                                                            --30--
('A Brief History of Time','Egmont Books'),                                                                   --31--
('The Legend of the Overfiend','Kodansha Publishing'),                                                        --32--
('Battle Royale','Kodansha Publishing'),                                                                      --33--
('Lone Wolf & Cub','Kodansha Publishing'),                                                                    --34--
('Berserk','Kodansha Publishing'),                                                                            --35--
('One Piece','Kodansha Publishing'),                                                                          --36--
('The Lost Tribe','Penguin Random House'),                                                                    --37--
('New Perspectives HTML5 and CSS3: Comprehensive ','Oxford University Press'),                                --38--
('Microsoft Visual C#: An Introduction to Object-Oriented Programming ','Oxford University Press'),           --39--
('Database Systems: Introduction to Databases and Data Warehouses','Oxford University Press'),                --40--
('CompTIA Project+ Study Guide: Exam PK0-004','Oxford University Press'),                                     --41--
('The Self-Taught Programmer: The Definitive Guide to Programming Profesionally','Oxford University Press'),  --42--
('A Confederacy of Dunces','Penguin Random House'),                                                           --43--
('Through the Looking Glass','Egmont Books'),                                                                 --44--
('Stormbringer', 'Bantam Spectra Publishing'),                                                                --45--
('A Nomad of the Time Streams','Bantam Spectra Publishing'),                                                  --46--
('The Call of Cthulhu','Bantam Spectra Publishing'),                                                          --47--
('At the Mountains of Madness','Bantam Spectra Publishing'),                                                  --48--
('Dagon','Bantam Spectra Publishing'),                                                                        --49--
('The Dunwich Horror','Bantam Spectra Publishing')                                                            --50--
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
(11,'Stephen King'),
(12,'F. Scott Fitzgerald'),
(13,'Leo Tolsky'),
(14,'Nelle Harper Lee'),
(15,'Geoffrey Chaucer'),
(16,'Jules Verne'),
(17,'J.R.R. Tolkien'),
(18,'J.R.R. Tolkien'),
(19, 'George Orwell'),
(20, 'William Golding'),
(21, 'Sir Arthur Conan Doyle'),
(22, 'Frank Herbert'),
(23, 'C.S. Lewis'),
(24, 'George R.R. Martin'),
(25, 'George R.R. Martin'),
(26, 'George R.R. Martin'),
(27, 'George R.R. Martin'),
(28, 'George R.R. Martin'),
(29, 'George R.R. Martin'),
(30, 'George R.R. Martin'),
(31, 'Stephen Hawking'),
(32, 'Hideki Takayama'),
(33, 'Koushun Takami'),
(34, 'Kazuo Koike'),
(35,'Kentaro Miura'),
(36,'Eiichiro Oda'),
(37,'Mark Lee'),
(38,'Patrick M. Carey'),
(39,'Joyce Farrell'),
(40,'Nenad Jukic'),
(41,'Kim Heldman'),
(42,'Cory Althoff'),
(43,'John Kennedy Toole'),
(44,'Lewis Carroll'),
(45,'Michael Moorcock'),
(46,'Michael Moorcock'),
(47, 'H.P. Lovecraft'),
(48, 'H.P. Lovecraft'),
(49, 'H.P. Lovecraft'),
(50, 'H.P. Lovecraft')
;

/* Command to create table BOOK_COPIES */
CREATE TABLE BOOK_COPIES (
	BookID INT NOT NULL FOREIGN KEY REFERENCES BOOKS(BookID),
	BranchID INT NOT NULL FOREIGN KEY REFERENCES LIBRARY_BRANCH(BranchID),
	Number_of_Copies INT NOT NULL
);

/*Data entry into BOOK_COPIES for Central Libary Branch: */
INSERT INTO BOOK_COPIES
(BookID, BranchID,Number_of_Copies)
VALUES
(10,1,2),
(11,1,2),
(12,1,2),
(13,1,2),
(14,1,2),
(15,1,2),
(16,1,2),
(17,1,2),
(18,1,2),
(19,1,2),
(20,1,2),
(21,1,2),
(22,1,2),
(23,1,2),
(24,1,2),
(25,1,2),
(26,1,2),
(27,1,2),
(28,1,2),
(29,1,2),
(30,1,2),
(31,1,2),
(32,1,2),
(33,1,2),
(33,1,2),
(34,1,2),
(35,1,2),
(36,1,2),
(38,1,2),
(39,1,2),
(40,1,2),
(41,1,2),
(42,1,2),
(43,1,2),
(44,1,2),
(45,1,2),
(46,1,2),
(47,1,2),
(48,1,2),
(49,1,2),
(50,1,2)
;
/* End of data entry into book copies for SharpsTown Library Branch */

INSERT INTO BOOK_COPIES 
(BookID, BranchID,Number_of_Copies)
VALUES
(12,2,2),
(13,2,2),
(14,2,2),
(15,2,2),
(16,2,2),
(17,2,2),
(18,2,2),
(19,2,2),
(20,2,2),
(21,2,2),
(22,2,2),
(23,2,2),
(24,2,2),
(25,2,2),
(26,2,2),
(27,2,2),
(28,2,2),
(29,2,2),
(30,2,2),
(31,2,2),
(32,2,2),
(33,2,2),
(33,2,2),
(34,2,2),
(35,2,2),
(36,2,2),
(37,2,2),
(38,2,2),
(39,2,2),
(40,2,2),
(41,2,2),
(42,2,2),
(43,2,2),
(44,2,2),
(45,2,2),
(46,2,2),
(47,2,2),
(48,2,2),
(49,2,2),
(50,2,2)
;
/* End of data entry into SharpsTown Library Branch for BOOK_COPIES */

/* Data entry into North Orange Library Branch for BOOK_COPIES */
INSERT INTO BOOK_COPIES
(BookID, BranchID,Number_of_Copies)
VALUES
(12,3,2),
(13,3,2),
(14,3,2),
(15,3,2),
(16,3,2),
(17,3,2),
(18,3,2),
(19,3,2),
(20,3,2),
(21,3,2),
(22,3,2),
(23,3,2),
(24,3,2),
(25,3,2),
(26,3,2),
(27,3,2),
(28,3,2),
(29,3,2),
(30,3,2),
(31,3,2),
(32,3,2),
(33,3,2),
(33,3,2),
(34,3,2),
(35,3,2),
(36,3,2),
(38,3,2),
(39,3,2),
(40,3,2),
(41,3,2),
(42,3,2),
(43,3,2),
(44,3,2),
(45,3,2),
(46,3,2),
(47,3,2),
(48,3,2),
(49,3,2),
(50,3,2)
;
/* End of data entry into North Orange Library Branch BOOK_COPIES */

/*Data Entry into East Orange Library Branch BOOK_COPIES */
INSERT INTO BOOK_COPIES
(BookID, BranchID,Number_of_Copies)
VALUES
(12,4,2),
(13,4,2),
(14,4,2),
(15,4,2),
(16,4,2),
(17,4,2),
(18,4,2),
(19,4,2),
(20,4,2),
(21,4,2),
(22,4,2),
(23,4,2),
(24,4,2),
(25,4,2),
(26,4,2),
(27,4,2),
(28,4,2),
(29,4,2),
(30,4,2),
(31,4,2),
(32,4,2),
(33,4,2),
(33,4,2),
(34,4,2),
(35,4,2),
(36,4,2),
(38,4,2),
(39,4,2),
(40,4,2),
(41,4,2),
(42,4,2),
(43,4,2),
(44,4,2),
(45,4,2),
(46,4,2),
(47,4,2),
(48,4,2),
(49,4,2),
(50,4,2)
;
/*End of data entry into East Orange Library Branch BOOK_COPIES */

/*Data entery into South Orange Library Branch BOOK_COPIES */
INSERT INTO BOOK_COPIES
(BookID, BranchID, Number_of_Copies)
VALUES
(12,5,2),
(13,5,2),
(14,5,2),
(15,5,2),
(16,5,2),
(17,5,2),
(18,5,2),
(19,5,2),
(20,5,2),
(21,5,2),
(22,5,2),
(23,5,2),
(24,5,2),
(25,5,2),
(26,5,2),
(27,5,2),
(28,5,2),
(29,5,2),
(30,5,2),
(31,5,2),
(32,5,2),
(33,5,2),
(33,5,2),
(34,5,2),
(35,5,2),
(36,5,2),
(38,5,2),
(39,5,2),
(40,5,2),
(41,5,2),
(42,5,2),
(43,5,2),
(44,5,2),
(45,5,2),
(46,5,2),
(47,5,2),
(48,5,2),
(49,5,2),
(50,5,2)
;
/* End of data entry into South Orange Library Branch BOOK_COPIES */

/*Data entry into West Orange Library Branch BOOK_COPIES */
INSERT INTO BOOK_COPIES
(BookID, BranchID,Number_of_Copies)
VALUES
(12,6,2),
(13,6,2),
(14,6,2),
(15,6,2),
(16,6,2),
(17,6,2),
(18,6,2),
(19,6,2),
(20,6,2),
(21,6,2),
(22,6,2),
(23,6,2),
(24,6,2),
(25,6,2),
(26,6,2),
(27,6,2),
(28,6,2),
(29,6,2),
(30,6,2),
(31,6,2),
(32,6,2),
(33,6,2),
(33,6,2),
(34,6,2),
(35,6,2),
(36,6,2),
(38,6,2),
(39,6,2),
(40,6,2),
(41,6,2),
(42,6,2),
(43,6,2),
(44,6,2),
(45,6,2),
(46,6,2),
(47,6,2),
(48,6,2),
(49,6,2),
(50,6,2)
;
/* End of data entry into West Orange Library Branch BOOK_COPIES */

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
('Joe Alderman','100 E. Michigan Street, Apt #2, Orlando, FL 32819','407-625-9788'),             --100--
('Maisel Rosewater','2325 W. Highland Road,Orlando, FL 32801','321-880-5961'),                   --101--
('Robert Frost','223 E. Concord Street, Orlando, FL 32801','407-235-7111'),                      --102--
('Barry Allen', '7777 Haste Lane, Speedsville, FL 31919','321-888-9999'),                        --103--
('Clark Kent','1111 Fortress Solitude Street, Metropolis, FL 31101','407-765-3768'),             --104--
('Diana Prince','3696 Olympia Lane Ft. Lauderdale, FL 32221','386-678-2135'),                    --105--
('Peter Parker','2829 Broadway Road Miami, FL 32111','386-789-2152'),                            --106--
('William Wallace','98 Grand Street Port Orange, FL 32127','317-242-6789'),                      --107--
('Roger Stapleton','8082 West Devon Street Hollywood, FL 33025','521-336-7878'),                 --108--
('Alfred Pennyworth','42 Manchester St. Orlando, FL 32839','321-768-2436'),                      --109--
('Jack Hyde','9678 Dunbar St. Orlando, FL 32822','407-896-5326'),                                --110--
('George Chaucer','9 Canterbury Street Lakeland, FL 33813','521-368-2931'),                      --111--
('Andre Toulon','98 Lafayette Dr. Orlando, FL 32811','407-860-1945'),                            --112--
('Rocky Balbola','52 Rockland St. Orlando, FL 32811','321-867-3161'),                            --113--
('Randall Duke','7565 Gates Circle Orlando, FL 32839','380-857-3796'),                           --114--
('Claire Bell','9618 Jennings Ave. Orlando, FL 32822','786-943-8915'),                           --115--
('Cedric Ibarra','835 Schoolhouse Court Orlando, FL 32835','312-537-9381'),                      --116--
('Humberto Weber','840 E. Center St. Orlando, FL 32818','313-965-5618'),                         --117--
('Jarvis Baird','189 Elmwood Lane Orlando, FL 32810','384-365-2310'),                            --118--
('Maxine Bowen','105 Lake View Ave. Orlando, FL 32811','324-215-9074'),                          --119--
('Vincent Horne','8591 North Street Casselberry, FL 32707','316-656-6184'),                      --120--
('Ron Petersen','223 W. Philmont St. Winter Park, FL 32792','368-816-1742'),                     --121--
('Prince Norton','9889 W. Rockwell St. Orlando, FL 32818','302-529-6494'),                       --122--
('Mickey Huber','9492 Sunbeam Street Orlando, FL 32822','407-714-8405'),                         --123--
('Jimmy Tran','752 Bayberry Drive Orlando, FL 32818','404-525-2078'),                            --124--
('John Harker','6981 Lucas Avenue Orlando, FL 32819','407-966-0799'),                            --125--
('George Lucas','9226 Lees Creek Ave. Altamonte Springs, FL 32714','614-337-9069'),              --126--
('Steven Spielberg','54 Delaware Dr. Miami, FL 33161','639-235-1921'),                           --127--
('Oliver Stone','58 Bohemia Rd. Port Richey, FL 34668','694-880-4138'),                          --128--
('Roderick Osborne','9516 Cherry St. Sarasota, FL 34231','328-751-8920'),                        --129--
('Kendra Blair','85 Oak St. Orlando, FL 32822','328-751-8920'),                                  --130--
('Gustavo Roy','8017 53rd Ave. Orlando, FL 32811','301-305-9946'),                               --131--
('Felix	Quinn','7031 Rose Road Orange Park, FL 32073','816-285-1697'),                           --132--
('Rosalie Rhodes','7831 Indian Spring St. Orlando, FL 32812','417-655-4425'),                    --133--
('Jaime	Brewer','418 Cleveland Drive Orlando, FL 32825','447-307-7819'),                         --134--
('Pat Owen','7147 Crescent Lane Orlando, FL 32818','515-527-0684'),                              --135--
('Traci	Morton','7970 E. Andover St. Opa Locka, FL 33055','675-762-0680'),                       --136--
('Israel Mendez','97 South Hickory Street Miami, FL 33134','624-770-1007'),                      --137--
('Archie Spencer','581 Argyle St. Lake Worth, FL 33467','653-259-1124'),                         --138--
('Rhonda Mcgee','7491 South Randall Mill Street Apopka, FL 32703','789-324-6715'),               --139--
('Harry	Castro','501 South Penn Ave. Port Richey, FL 34668','863-304-6388'),                     --140--
('Woodrow Brooks','869 E. Annadale Ave. Palm Bay, FL 32907','759-979-3303'),                     --141--
('Freda	Haynes','9989 Grove St. Lakeland, FL 33801','863-304-6388'),                             --142--
('Lewis	Larson','508 South Tarkiln Hill Court Clermont, FL 34711','759-979-3303'),               --143--
('Robyn	Holloway','3 Hilltop St. Orlando, FL 32839','305-791-2888'),                             --144--
('Ngan Elliot','64 Manhattan Court Orlando, FL 32810','460-586-6222'),                           --145--
('Truman Lombardo','36 Edgewater Dr. Orlando, FL 32822','475-544-7881'),                         --146--
('Danial Dupont','806 S. Berkshire St. Apt 5 Orlando, FL 32835','623-738-4353'),                 --147--
('Eric Crowley','787 N. Cardinal Lane Orlando, FL 32808','802-943-4150'),                        --148--
('Vernia Escobar','824 Adams Rd. Winter Park, FL 32792','655-854-8386'),                         --149--
('Fritz	Ware','895 Lancaster Rd. Orlando, FL 32810','332-324-4143')                              --150--
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
(10,1,100, '04-26-2019','05-26-2019'),  --1--
(16,1,103, '04-26-2019','05-26-2019'),  --2--
(15,1,107, '04-27-2019','05-27-2019'),  --3--
(13,1,110,'04-27-2019','05-27-2019'),   --4--
(17,3,124, '04-28-2019','05-28-2019'),  --5--
(18,3,124, '04-28-2019','05-28-2019'),  --6--
(11,1,110, '04-29-2019','05-29-2019'),  --7--
(12,1,119, '04-29-2019','05-29-2019'),  --8--
(37,2,101,'04-30-2019','05-31-2019'),   --9--
(42,2,103,'04-30-2019','05-31-2019'),  --10--
(20,2,122,'04-30-2019','05-31-2019'),  --11--
(19,2,117,'04-30-2019','05-31-2019'),  --12--
(23,2,120,'04-30-2019','05-31-2019'),  --13--
(31,2,118,'04-30-2019','05-31-2019'),  --14--
(17,3,116,'05-01-2019','06-01-2019'),  --15--
(18,3,116,'05-01-2019','06-01-2019'),  --16--
(14,3,105,'05-01-2019','06-01-2019'),  --17--
(19,3,108,'05-01-2019','06-01-2019'),  --18--
(23,4,121,'05-15-2019','06-15-2019'),  --19--
(21,4,115,'05-15-2019','06-15-2019'),  --20--
(31,5,106,'05-25-2019','06-25-2019'),  --21--
(32,5,106,'05-25-2019','06-25-2019'),  --22--
(33,5,106,'05-25-2019','06-25-2019'),  --23--
(34,5,106,'05-25-2019','06-25-2019'),  --24--
(35,5,106,'05-25-2019','06-25-2019'),  --25--
(36,5,106,'05-25-2019','06-25-2019'),  --26--
(21,5,106,'05-25-2019','06-25-2019'),  --27--
(38,6,125,'05-28-2019','06-28-2019'),  --28--
(39,6,125,'05-28-2019','06-28-2019'),  --29--
(40,6,125,'05-28-2019','06-28-2019'),  --30--
(41,6,125,'05-28-2019','06-28-2019'),  --31--
(42,6,125,'05-28-2019','06-28-2019'),  --32--
(43,6,125,'05-28-2019','06-28-2019'),  --33--
(44,4,143,'05-29-2019','06-29-2019'),  --34--
(45,4,131,'05-29-2019','06-29-2019'),  --35--
(46,3,137,'05-29-2019','06-29-2019'),  --36--
(22,1,138,'05-29-2019','06-29-2019'),  --37--
(18,3,139,'05-29-2019','06-29-2019'),  --38--
(21,5,128,'05-29-2019','06-29-2019'),  --39--
(28,6,127,'05-30-2019','06-30-2019'),  --40--
(38,2,130,'05-30-2019','06-30-2019'),  --41--
(44,6,132,'05-30-2019','06-30-2019'),  --42--
(24,1,135,'05-30-2019','06-30-2019'),  --43--
(26,3,136,'05-30-2019','06-30-2019'),  --44--
(28,5,137,'05-30-2019','06-30-2019'),  --45--
(33,4,138,'05-30-2019','06-30-2019'),  --46--
(46,6,140,'05-31-2019','07-01-2019'),  --47--
(47,3,141,'05-31-2019','07-01-2019'),  --48--
(48,5,143,'05-31-2019','07-01-2019'),  --49--
(20,3,148,'05-31-2019','07-01-2019')   --50--
;
/* Test of Tables to make sure data entered correctly */
SELECT * FROM LIBRARY_BRANCH
SELECT * FROM PUBLISHER
SELECT * FROM BOOKS
SELECT * FROM BOOK_COPIES
SELECT * FROM BORROWER
SELECT * FROM BOOK_LOANS
GO
/* End of test to see if tables populated correctly */



/* BEGIN STORED PROCEDURES FOR DATABASE LIBRARY */

/* CREATE STORED PROCEDURES THAT WILL QUERY FOR EACH OF THE FOLLOWING QUESTIONS: */

/* Each stored procedure question first has the query, then the stored procedure, and finally the execute of the stored procedure. */

/* I did this to make sure that I could query the data correctly from the table, then build the stored procedure from the query */


/* 1.) How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"? */

	/* Query  to build towards the called procedure */
	SELECT 
	a1.Number_of_Copies,a2.BranchName,a3.Title
	FROM BOOK_COPIES a1
	INNER JOIN LIBRARY_BRANCH a2 ON a1.BranchID = a1.BranchID
	INNER JOIN BOOKS a3 ON a3.BookID = a1.BookID
	WHERE BranchName ='SharpsTown Library Branch' AND Title = 'The Lost Tribe';
	GO

	/* Stored Procedure for Question 1: */
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
	a1.Number_of_Copies,a2.Title,a3.BranchName
	FROM BOOK_COPIES a1
	INNER JOIN BOOKS a2 ON a2.BookID = a1.BookID
	INNER JOIN LIBRARY_BRANCH a3 ON a3.BranchID = a1.BranchID
	WHERE Title = 'The Lost Tribe'
	GO

	/* Stored Procedure for Question 2: */
	CREATE PROCEDURE dbo.uspGetBookInfo2 @Title nvarchar(100) = NULL
	AS
	SELECT
	a1.Number_of_Copies,a2.Title,a3.BranchName
	FROM BOOK_COPIES a1
	INNER JOIN BOOKS a2 ON a2.BookID = a1.BookID
	INNER JOIN LIBRARY_BRANCH a3 ON a3.BranchID = a1.BranchID
	WHERE Title =ISNULL(@Title,Title)
	GO

	/* Execute command to test Called Procedure */
	EXECUTE dbo.uspGetBookInfo2 @Title = 'The Lost Tribe'
	GO
	
/* 3.) Retrieve the names of all borrowers who do not have any books checked out. */

	/* Query to build towards Stored Procedure */
	SELECT
	Borrower_Name AS 'No Books Checked Out' FROM BORROWER
	LEFT JOIN BOOK_LOANS 
	ON BORROWER.CardNo = BOOK_LOANS.CardNo
	WHERE BookID IS NULL
	GO

	/* Stored Procedure for Question 2: */
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
		WHERE BranchName = 'SharpsTown Library Branch' AND DateDue = '05-31-2019'
		GO

		/* STORED PROCEDURE */
		CREATE PROCEDURE dbo.uspGetBookInfo4 
		AS
		SELECT 
		Title AS 'Book Name', Borrower_Name AS 'Borrower Name', Borrower_Address AS 'Borrower Address'
		FROM BOOK_LOANS a1
		INNER JOIN BOOKS a2 ON a2.BookID = a1.BookID
		INNER JOIN LIBRARY_BRANCH a3 ON a3.BranchID = a1.BranchID
		INNER JOIN BORROWER a4 ON a4.CardNo	= a1.CardNo
		WHERE BranchName = 'SharpsTown Library Branch' AND DateDue = '05-31-2019'
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

		/* STORED PROCEDURE */
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

		/* STORED PROCEDURE */
		CREATE PROCEDURE dbo.uspGetBookInfo6
		AS
		SELECT Borrower_Name AS 'Borrower Name', Borrower_Address AS 'Borrower Address', COUNT(*) AS 'Books Checked Out' FROM BORROWER a1
		INNER JOIN BOOK_LOANS a2 ON a2.CardNo = a1.CardNo
		GROUP BY Borrower_Name,Borrower_Address HAVING COUNT(*) > 5
		GO

		EXECUTE dbo.uspGetBookInfo6
		GO

/* 7.) For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central". */
		/* QUERY */
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




 