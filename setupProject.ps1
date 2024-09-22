# Define the base directory for your project
$baseDir = "C:\Offline Development\Fantasy Bot\"  # Change this to your desired location

# Create the base project directory
New-Item -Path $baseDir -ItemType Directory

# Define the folder structure
$folders = @(
    "$baseDir/api",                 # Folder for API integrations
    "$baseDir/rulesEngine",         # Folder for rules engine logic
    "$baseDir/config",              # Folder for configuration files
    "$baseDir/supabase",            # Folder for Supabase integration
    "$baseDir/utils",               # Folder for utility functions
    "$baseDir/logs",                # Folder for log files
    "$baseDir/scripts",             # Folder for any scripts like cron jobs or scheduled tasks
    "$baseDir/test",                # Folder for unit and integration tests
    "$baseDir/public",              # Placeholder for future front-end assets (if needed)
    "$baseDir/db",                  # Folder for database-related files (e.g., migration scripts)
    "$baseDir/controllers",         # Folder for API request controllers
    "$baseDir/middleware",          # Folder for middleware functions
    "$baseDir/models"               # Folder for Supabase data models
)

# Create the folders
foreach ($folder in $folders) {
    New-Item -Path $folder -ItemType Directory
}

# Create starter files
$files = @(
    "$baseDir/index.js",            # Entry point for your application
    "$baseDir/api/yahooFantasy.js", # Yahoo Fantasy API integration module
    "$baseDir/api/nflApi.js",       # NFL API integration module
    "$baseDir/api/facebookMessenger.js", # Facebook Messenger integration module
    "$baseDir/rulesEngine/rules.js",     # Main rules engine logic
    "$baseDir/supabase/supabaseClient.js", # Supabase client configuration
    "$baseDir/config/default.json",    # Default configuration file (e.g., for environment variables)
    "$baseDir/utils/helpers.js",       # Utility/helper functions
    "$baseDir/test/testRulesEngine.js" # Sample test file for the rules engine
)

# Create empty files
foreach ($file in $files) {
    New-Item -Path $file -ItemType File
}

# Initialize a package.json file with npm (you must have Node.js installed)
cd $baseDir
npm init -y

Write-Output "Folder structure and starter files created successfully!"
