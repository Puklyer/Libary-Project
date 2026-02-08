# Library App - Library Management System
!!! important This application is currently not working properly; the window opens, but the button actions don't work correctly. I will complete the missing parts soon.
## Description
Windows Forms application for library management, developed in C# with Visual Studio 2022 and MS Access database.

## Features
- **Book Management**: Add, edit, delete and view books with images
- **Member Management**: Administration of people who borrow books
- **Loan System**: Complete loan management with automatic cost calculation
- **English Interface**: All texts and messages are in English
- **Complete Validations**: Required fields, numeric format, referential integrity
- **Images**: Support for images for books and members

## Technologies Used
- **Framework**: .NET 6.0 Windows Forms
- **Language**: C#
- **Database**: Microsoft Access (.accdb)
- **IDE**: Visual Studio 2022
- **DB Connection**: System.Data.OleDb

## Database Structure

### Tables:
1. **Books**
   - BookId (AutoNumber, Primary Key)
   - Title (Text, 255)
   - Author (Text, 255)
   - InventoryNumber (Text, 50)
   - DailyRate (Currency)
   - ImagePath (Text, 500)

2. **Members**
   - MemberId (AutoNumber, Primary Key)
   - Name (Text, 255)
   - Address (Text, 500)
   - PhoneNumber (Text, 20)
   - ImagePath (Text, 500)

3. **Loans**
   - LoanId (AutoNumber, Primary Key)
   - LoanDate (DateTime)
   - MemberId (Long, Foreign Key)

4. **LoanContents**
   - LoanId (Long, Foreign Key)
   - ItemNumber (Integer)
   - BookId (Long, Foreign Key)
   - DailyRate (Currency)
   - NumberOfDays (Integer)

## Installation and Configuration

### System Requirements:
- Windows 10/11
- .NET 6.0 Runtime
- Microsoft Access Database Engine (ACE.OLEDB.12.0)
- Visual Studio 2022 (for development)

### Installation Steps:

1. **Clone the repository:**
   ```bash
   git clone [repository-url]
   cd BibliotecaApp
   ```

2. **Create MS Access database:**
   - Open Microsoft Access
   - Create a new database named `Library.accdb`
   - Save it on Desktop
   - Execute the script from `create_access_database.sql` to create tables and test data

3. **Open project in Visual Studio 2022:**
   - Open `BibliotecaApp.sln` file
   - Build solution (Ctrl+Shift+B)

4. **Run the application:**
   - Press F5 or click Start
   - Use credentials: **admin** / **123**

## Usage

### Login
- Username: `admin`
- Password: `123`

### Main Features:

1. **Book Management**
   - Add new books with all details
   - Modify existing information
   - Delete books (with integrity check)
   - Load and display images

2. **Member Management**
   - Register people who borrow
   - Update contact information
   - Delete members (with active loan check)

3. **Loan System**
   - Create new loans
   - Add multiple books to a loan
   - Automatic cost calculation
   - Loan period management

## Implemented Validations
- **Required fields**: Verification of essential field completion
- **Numeric format**: Validation of rates and number of days
- **Referential integrity**: Prevention of deleting records with dependencies
- **Delete confirmation**: Confirmation dialog for delete operations

## Test Data
The application comes with pre-loaded test data:
- 20 books from classic English literature
- 20 members with realistic English data
- Complete structure for functionality testing

## Development

### Project Structure:
```
BibliotecaApp/
├── Data/
│   └── DatabaseConnection.cs    # Database connection
├── Forms/
│   ├── LoginForm.cs             # Authentication form
│   ├── MainForm.cs              # Main menu
│   ├── CartiForm.cs             # Book management
│   ├── PersoaneForm.cs          # Member management
│   └── ImprumuturiForm.cs       # Loan management
├── Program.cs                   # Entry point
└── BibliotecaApp.csproj         # Project configuration
```

### For Developers:
- Code is commented and structured for easy understanding
- Uses standard Windows Forms patterns
- Error handling implemented in all operations
- Modular architecture for extensibility

## License
This project is developed for educational purposes.

## Contact
For questions or suggestions, please open an issue in the repository.
