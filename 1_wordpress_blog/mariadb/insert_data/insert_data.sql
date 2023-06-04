INSERT INTO CustomerList VALUES('EV', 'Edward', 'Vongsaphay', 9055558932, DATE '1990-1-1', 537597397, 'Active');
INSERT INTO CustomerList VALUES('FE', 'Fiona', 'Esposito', 9053453920, DATE '1955-3-28', 232323290, 'Active');
INSERT INTO CustomerList VALUES('GS', 'Graeme', 'Sands', 4168495391, DATE '1973-11-30', 492830981, 'Amount Owing');
INSERT INTO CustomerList VALUES('MA', 'Margeret', 'Armstrong', 9057457342, DATE '1968-6-19', 987654336, 'Suspended');
INSERT INTO CustomerList VALUES('MM', 'Michael', 'McGuinty', 9056483246, DATE '1984-3-30', 345678998, 'Active');
INSERT INTO CustomerList VALUES('PC', 'Phil', 'Charest', 4163713979, DATE '1980-12-10', 604604047, 'Suspended');

INSERT INTO MovieCategory VALUES(1, 'Action/Adventure');
INSERT INTO MovieCategory VALUES(2, 'Biography');
INSERT INTO MovieCategory VALUES(3, 'Children');
INSERT INTO MovieCategory VALUES(4, 'Comedy');
INSERT INTO MovieCategory VALUES(5, 'Drama');
INSERT INTO MovieCategory VALUES(6, 'Horror');
INSERT INTO MovieCategory VALUES(7, 'Musical');
INSERT INTO MovieCategory VALUES(8, 'Science Fiction');

INSERT INTO DVD VALUES(1, (SELECT CategoryID FROM MovieCategory WHERE CategoryID = 5), 'Elizabeth: The Golden Age', 2008, 5.29, 'Yes', 'PG', 'Return to Shelf');
INSERT INTO DVD VALUES(10, (SELECT CategoryID FROM MovieCategory WHERE CategoryID = 5), 'The King''s Speech', 2010, 5.29, 'Yes', 'R', 'Return to Shelf');
INSERT INTO DVD VALUES(11,(SELECT CategoryID FROM MovieCategory WHERE CategoryID = 1), 'True Grit', 2010, 5.29, 'Yes', 'PG', 'Return to Shelf');
INSERT INTO DVD VALUES(2, (SELECT CategoryID FROM MovieCategory WHERE CategoryID = 1), 'The Bourne Ultimatum', 2006, 3.99, 'No', 'PG', 'Sell');
INSERT INTO DVD VALUES(3, (SELECT CategoryID FROM MovieCategory WHERE CategoryID = 3), 'Shrek 2', 2004, 3.99, 'No', '3', 'Return to Shelf');
INSERT INTO DVD VALUES(4, (SELECT CategoryID FROM MovieCategory WHERE CategoryID = 4), 'Ace Ventura, Pet Detective', 1994, 3.99, 'No', '14A', 'Sell');
INSERT INTO DVD VALUES(5, (SELECT CategoryID FROM MovieCategory WHERE CategoryID = 7), 'Hairspray', 2007, 5.29, 'No', 'PG', 'Sell');
INSERT INTO DVD VALUES(6, (SELECT CategoryID FROM MovieCategory WHERE CategoryID = 3), 'A Charlie Brown Christmas', 2000, 3.99, 'No', 'G', 'Return to Shelf');
INSERT INTO DVD VALUES(7, (SELECT CategoryID FROM MovieCategory WHERE CategoryID = 2), 'Leonard Cohen: I''m Your Man', 2006, 3.99, 'Yes', 'PG', 'Return to Shelf');
INSERT INTO DVD VALUES(8, (SELECT CategoryID FROM MovieCategory WHERE CategoryID = 6), 'Nightmare on Elm Street', 1999, 3.99, 'Yes', 'R', 'Return to Shelf');
INSERT INTO DVD VALUES(9, (SELECT CategoryID FROM MovieCategory WHERE CategoryID = 8), 'Star Trek: Nemesis', 2005, 3.99, 'Yes', 'PG', 'Return to Shelf');

INSERT INTO DVDRental VALUES(1001, (SELECT CustomerID FROM CustomerList WHERE CustomerID = 'FE'), (SELECT TapeID FROM DVD WHERE TapeID = 10), DATE '2011-12-2');
INSERT INTO DVDRental VALUES(1002, (SELECT CustomerID FROM CustomerList WHERE CustomerID = 'FE'), (SELECT TapeID FROM DVD WHERE TapeID = 3), DATE '2011-12-2');
INSERT INTO DVDRental VALUES(1003, (SELECT CustomerID FROM CustomerList WHERE CustomerID = 'MM'), (SELECT TapeID FROM DVD WHERE TapeID = 6), DATE '2011-12-2');
INSERT INTO DVDRental VALUES(1004, (SELECT CustomerID FROM CustomerList WHERE CustomerID = 'PC'), (SELECT TapeID FROM DVD WHERE TapeID = 1), DATE '2011-12-7');
INSERT INTO DVDRental VALUES(1005, (SELECT CustomerID FROM CustomerList WHERE CustomerID = 'GS'), (SELECT TapeID FROM DVD WHERE TapeID = 7), DATE '2011-12-7');
INSERT INTO DVDRental VALUES(1006, (SELECT CustomerID FROM CustomerList WHERE CustomerID = 'GS'), (SELECT TapeID FROM DVD WHERE TapeID = 9), DATE '2011-12-7');
