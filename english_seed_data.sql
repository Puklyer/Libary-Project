-- English Seed Data for Library Management System
-- This file contains sample data in English for testing the library application

-- Sample Books Data
INSERT INTO Books (Title, Author, ISBN, InventoryNumber, DailyRate, ImagePath) VALUES
('To Kill a Mockingbird', 'Harper Lee', '978-0-06-112008-4', 'BK001', 1.50, ''),
('1984', 'George Orwell', '978-0-452-28423-4', 'BK002', 1.25, ''),
('Pride and Prejudice', 'Jane Austen', '978-0-14-143951-8', 'BK003', 1.00, ''),
('The Great Gatsby', 'F. Scott Fitzgerald', '978-0-7432-7356-5', 'BK004', 1.75, ''),
('One Hundred Years of Solitude', 'Gabriel García Márquez', '978-0-06-088328-7', 'BK005', 2.00, ''),
('Brave New World', 'Aldous Huxley', '978-0-06-085052-4', 'BK006', 1.50, ''),
('The Catcher in the Rye', 'J.D. Salinger', '978-0-316-76948-0', 'BK007', 1.25, ''),
('Lord of the Flies', 'William Golding', '978-0-571-05686-2', 'BK008', 1.00, ''),
('Animal Farm', 'George Orwell', '978-0-452-28424-1', 'BK009', 0.75, ''),
('The Hobbit', 'J.R.R. Tolkien', '978-0-547-92822-7', 'BK010', 2.25, ''),
('Fahrenheit 451', 'Ray Bradbury', '978-1-4516-7331-9', 'BK011', 1.50, ''),
('Jane Eyre', 'Charlotte Brontë', '978-0-14-144114-6', 'BK012', 1.25, ''),
('Wuthering Heights', 'Emily Brontë', '978-0-14-143955-6', 'BK013', 1.25, ''),
('The Picture of Dorian Gray', 'Oscar Wilde', '978-0-14-143957-0', 'BK014', 1.50, ''),
('Dracula', 'Bram Stoker', '978-0-14-143984-6', 'BK015', 1.75, ''),
('Frankenstein', 'Mary Shelley', '978-0-14-143947-1', 'BK016', 1.50, ''),
('The Adventures of Sherlock Holmes', 'Arthur Conan Doyle', '978-0-14-143928-0', 'BK017', 1.25, ''),
('Alice''s Adventures in Wonderland', 'Lewis Carroll', '978-0-14-143761-3', 'BK018', 1.00, ''),
('The Secret Garden', 'Frances Hodgson Burnett', '978-0-14-144565-6', 'BK019', 1.00, ''),
('Little Women', 'Louisa May Alcott', '978-0-14-143966-2', 'BK020', 1.25, '');

-- Sample Members Data
INSERT INTO Members (FirstName, LastName, Email, Phone, Address, MembershipType, Status, MembershipExpiry, PhotoPath) VALUES
('John', 'Smith', 'john.smith@email.com', '555-0101', '123 Main St, City, State 12345', 'Public', 'Active', '2024-12-31', ''),
('Emily', 'Johnson', 'emily.johnson@email.com', '555-0102', '456 Oak Ave, City, State 12346', 'Student', 'Active', '2024-12-31', ''),
('Michael', 'Brown', 'michael.brown@email.com', '555-0103', '789 Pine Rd, City, State 12347', 'Faculty', 'Active', '2024-12-31', ''),
('Sarah', 'Davis', 'sarah.davis@email.com', '555-0104', '321 Elm St, City, State 12348', 'Public', 'Active', '2024-12-31', ''),
('David', 'Wilson', 'david.wilson@email.com', '555-0105', '654 Maple Dr, City, State 12349', 'Premium', 'Active', '2024-12-31', ''),
('Lisa', 'Anderson', 'lisa.anderson@email.com', '555-0106', '987 Cedar Ln, City, State 12350', 'Student', 'Active', '2024-12-31', ''),
('Robert', 'Taylor', 'robert.taylor@email.com', '555-0107', '147 Birch Way, City, State 12351', 'Public', 'Active', '2024-12-31', ''),
('Jennifer', 'Thomas', 'jennifer.thomas@email.com', '555-0108', '258 Spruce St, City, State 12352', 'Faculty', 'Active', '2024-12-31', ''),
('William', 'Jackson', 'william.jackson@email.com', '555-0109', '369 Willow Ave, City, State 12353', 'Public', 'Active', '2024-12-31', ''),
('Amanda', 'White', 'amanda.white@email.com', '555-0110', '741 Poplar Rd, City, State 12354', 'Student', 'Active', '2024-12-31', ''),
('Christopher', 'Harris', 'christopher.harris@email.com', '555-0111', '852 Ash Dr, City, State 12355', 'Premium', 'Active', '2024-12-31', ''),
('Jessica', 'Martin', 'jessica.martin@email.com', '555-0112', '963 Hickory Ln, City, State 12356', 'Public', 'Active', '2024-12-31', ''),
('Matthew', 'Thompson', 'matthew.thompson@email.com', '555-0113', '159 Walnut St, City, State 12357', 'Faculty', 'Active', '2024-12-31', ''),
('Ashley', 'Garcia', 'ashley.garcia@email.com', '555-0114', '357 Chestnut Ave, City, State 12358', 'Student', 'Active', '2024-12-31', ''),
('Joshua', 'Martinez', 'joshua.martinez@email.com', '555-0115', '468 Sycamore Rd, City, State 12359', 'Public', 'Active', '2024-12-31', ''),
('Stephanie', 'Robinson', 'stephanie.robinson@email.com', '555-0116', '579 Magnolia Dr, City, State 12360', 'Premium', 'Active', '2024-12-31', ''),
('Andrew', 'Clark', 'andrew.clark@email.com', '555-0117', '680 Dogwood Ln, City, State 12361', 'Student', 'Active', '2024-12-31', ''),
('Michelle', 'Rodriguez', 'michelle.rodriguez@email.com', '555-0118', '791 Redwood St, City, State 12362', 'Faculty', 'Active', '2024-12-31', ''),
('Daniel', 'Lewis', 'daniel.lewis@email.com', '555-0119', '802 Sequoia Ave, City, State 12363', 'Public', 'Active', '2024-12-31', ''),
('Nicole', 'Lee', 'nicole.lee@email.com', '555-0120', '913 Cypress Rd, City, State 12364', 'Student', 'Active', '2024-12-31', '');

-- Sample Categories Data
INSERT INTO Categories (Name, Description, ParentCategoryId) VALUES
('Fiction', 'Fictional literature and novels', NULL),
('Non-Fiction', 'Factual and educational books', NULL),
('Science Fiction', 'Science fiction novels and stories', 1),
('Mystery', 'Mystery and detective novels', 1),
('Romance', 'Romantic fiction', 1),
('Biography', 'Life stories of notable people', 2),
('History', 'Historical books and references', 2),
('Science', 'Scientific books and textbooks', 2),
('Technology', 'Technology and computer books', 2),
('Self-Help', 'Personal development books', 2);

-- Sample Book-Category Relationships
INSERT INTO BookCategories (BookId, CategoryId) VALUES
(1, 1), (1, 4),  -- To Kill a Mockingbird: Fiction, Mystery
(2, 1), (2, 3),  -- 1984: Fiction, Science Fiction
(3, 1), (3, 5),  -- Pride and Prejudice: Fiction, Romance
(4, 1),          -- The Great Gatsby: Fiction
(5, 1),          -- One Hundred Years of Solitude: Fiction
(6, 1), (6, 3),  -- Brave New World: Fiction, Science Fiction
(7, 1),          -- The Catcher in the Rye: Fiction
(8, 1),          -- Lord of the Flies: Fiction
(9, 1),          -- Animal Farm: Fiction
(10, 1), (10, 3), -- The Hobbit: Fiction, Science Fiction
(11, 1), (11, 3), -- Fahrenheit 451: Fiction, Science Fiction
(12, 1), (12, 5), -- Jane Eyre: Fiction, Romance
(13, 1), (13, 5), -- Wuthering Heights: Fiction, Romance
(14, 1),         -- The Picture of Dorian Gray: Fiction
(15, 1), (15, 4), -- Dracula: Fiction, Mystery
(16, 1), (16, 3), -- Frankenstein: Fiction, Science Fiction
(17, 1), (17, 4), -- The Adventures of Sherlock Holmes: Fiction, Mystery
(18, 1),         -- Alice's Adventures in Wonderland: Fiction
(19, 1),         -- The Secret Garden: Fiction
(20, 1);         -- Little Women: Fiction