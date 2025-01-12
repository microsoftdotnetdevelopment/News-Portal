## Project Setup and Run Guide for News Portal

## Step 1: Clone the Repository
First, get a copy of the project onto your local machine:
git clone https://github.com/your-username/News-Portal.git
cd News-Portal
## Step 2: Open in Visual Studio
Open Visual Studio and load the solution file (.sln) from the cloned project folder.
This will pull in the necessary project files.

## Step 3: Install Dependencies
Visual Studio might prompt you to restore dependencies—just allow it to restore any missing NuGet packages.
This will install any libraries or packages required for the project.

##Step 4: Set Up the Database
Open SQL Server and create a new database for the project.
In the project’s web.config file, update the database connection string with your database details:
<connectionStrings>
    <add name="DefaultConnection" connectionString="Data Source=YourServer;Initial Catalog=YourDatabase;Integrated Security=True" providerName="System.Data.SqlClient" />
</connectionStrings>

## Step 5: Run Migrations (if applicable)
If there are database migrations included, apply them to set up the database structure:
Update-Database

## Step 6: Build and Run the Project
In Visual Studio, press F5 or click on Start to build and run the project.
The News Portal should open in your browser, and you’ll be able to explore the site.

     dotnet new sln -n YourSolutionName

