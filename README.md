# News Portal

**News Portal** is a dynamic web platform for browsing and managing news across categories like sports, fashion, and more. It includes an admin panel for content management, a user login system, and a contact page for inquiries.

## Features
- **Admin Panel**: Manage news articles and user accounts.
- **User Roles**: Admins can post news, while users can browse and send messages.
- **News Categories**: Sports, fashion, etc.
- **Contact Page**: Allows users to send messages to the admin.

## Prerequisites
- Visual Studio
- .NET Framework
- SQL Server (for database integration)

## Installation

### Step 1: Clone the Repository
Open your terminal and clone the repository using:
```bash
git clone https://github.com/"Your git hub username"/News-Portal.git
```

### Step 2: Open in Visual Studio
- Open Visual Studio and load the solution file (`.sln`) from the cloned repository.
  
### Step 3: Install Dependencies
- Visual Studio will prompt you to restore NuGet packages. Allow it to restore the required dependencies.

### Step 4: Set Up the Database
- Create a new database in SQL Server.
- Update the connection string in the `web.config` file with your database details:
    ```xml
    <connectionStrings>
        <add name="DefaultConnection" connectionString="Data Source=YourServer;Initial Catalog=YourDatabase;Integrated Security=True" providerName="System.Data.SqlClient" />
    </connectionStrings>
    ```

### Step 5: Run Migrations (if applicable)
- If database migrations are set up, apply migrations using:
    ```bash
    Update-Database
    ```

### Step 6: Build and Run the Project
- Press `F5` or click "Start" to run the project in Visual Studio.

## Usage

### Admin
- Login as an admin using the default credentials (or create an admin account through the database).
- Navigate to the admin panel to add, edit, or delete news articles.
- View and manage user messages from the contact page.

### Users
- Browse news categories.
- View detailed articles.
- Send messages via the contact page.

## Technologies Used
- **Frontend**: HTML, CSS, JavaScript, Bootstrap
- **Backend**: ASP.NET, C#
- **Database**: SQL Server

## Contributing
1. Fork the repository.
2. Create a new feature branch (`git checkout -b feature/YourFeature`).
3. Add the change (`git add .`).
3. Commit your changes (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature/YourFeature`).
5. Open a pull request.

## License
This project is licensed under the MIT License. See the `LICENSE` file for details.
