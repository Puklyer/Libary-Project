# Library App - Installation Instructions

## Requirements
- Windows 10/11
- Visual Studio 2022
- Microsoft Access Database Engine (ACE.OLEDB.12.0)
- .NET 6.0 Runtime

## Installation Steps

### 1. Opening Project in Visual Studio 2022
1. Double-click `BibliotecaApp.sln` file to open in Visual Studio 2022
2. You can see all files in Solution Explorer
3. Project is configured as Windows Forms application

### 2. Database Setup

#### Option A: Automatic Creation (Recommended)
1. Run the application (F5)
2. When database not found dialog appears, select "YES"
3. System will automatically create the database

#### Option B: Manual Creation
1. Open Microsoft Access
2. Create new empty database
3. Save as `Library.accdb` on Desktop
4. Open `create_access_database.sql` file
5. Execute SQL commands one by one in Access

### 3. Project Structure
```
BibliotecaApp/
├── Data/
│   ├── DatabaseConnection.cs      # MS Access connection
│   ├── SimpleDbCreator.cs         # Database check
│   └── AccessDbCreator.cs         # Automatic database creation
├── Forms/
│   ├── LoginForm.cs               # Login form
│   ├── MainForm.cs                # Main menu
│   ├── CartiForm.cs               # Book management
│   ├── PersoaneForm.cs            # Person management
│   └── ImprumuturiForm.cs         # Loan management
├── Program.cs                     # Application startup
└── BibliotecaApp.csproj           # Project file
```

### 4. Running
1. Press F5 in Visual Studio or click "Start" button
2. Login screen:
   - Username: `admin`
   - Password: `123`
3. Select desired operation from main menu

### 5. Features
- **Full English Interface**: All menus and messages in English
- **MS Access Database**: .accdb format database
- **Automatic Database Creation**: Auto setup on first run
- **Visual Interface**: Modern Windows Forms design
- **Data Validation**: Controls and warnings on all inputs

### 6. Troubleshooting

#### "Provider not found" Error
- Install Microsoft Access Database Engine
- Download 64-bit version for 64-bit systems

#### "Database not found" Error
- Try automatic creation option
- Manually create Library.accdb on Desktop

#### Build Error
- Ensure .NET 6.0 SDK is installed
- Restore NuGet packages: `dotnet restore`

### 7. Development
- Code is written entirely in C#
- Uses Windows Forms
- ADO.NET with MS Access connection
- Modular structure for easy extension

## Contact
If you experience any issues, check the project documentation.