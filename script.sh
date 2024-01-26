#!/bin/bash

# Checking if a project name is provided
if [ $# -eq 0 ]; then
    echo "No project name provided. Usage: ./script.sh <project_name>"
    exit 1
fi

project_name=$1
base_dir=$(pwd)

#  project structure
mkdir -p "$base_dir/$project_name/{css,js,assets,config}"

# HTML file  boilerplate
cat << EOF > "$base_dir/$project_name/index.html"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Description of the project">
    <title>$project_name</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header></header>
    <main></main>
    <footer></footer>
    <script src="js/script.js"></script>
</body>
</html>
EOF

# CSS boilerplate
cat << EOF > "$base_dir/$project_name/css/style.css"
/* Reset or normalization CSS */
body, h1, h2, h3, p { margin: 0; padding: 0; }
body { font-family: Arial, sans-serif; }
/* Basic styles */
header, footer { text-align: center; }
main { padding: 15px; }
EOF

#  JS boilerplate
cat << EOF > "$base_dir/$project_name/js/script.js"
document.addEventListener('DOMContentLoaded', function() {
    console.log('JavaScript loaded');
   
});
EOF

# .gitignore file
echo "node_modules/" > "$base_dir/$project_name/.gitignore"

# Testing if CSS and JS files are not empty
if [ -s "$base_dir/$project_name/css/style.css" ] && [ -s "$base_dir/$project_name/js/script.js" ]; then
    echo "CSS and JS files are set up correctly."
else
    echo "Error: CSS or JS files are empty."
fi

# Initialize Git repository
cd "$base_dir/$project_name"
git init
git add .
git commit -m "Initial commit"

# Open the project directory in Visual Studio Code
code "$base_dir/$project_name"

echo "Project $project_name created successfully."
