#!/bin/bash

# Checking if a project name is provided
if [ $# -eq 0 ]; then
    echo "No project name provided. Usage: ./script.sh <project_name>"
    exit 1
fi

project_name=$1
base_dir=$(pwd)

# Creating project structure
mkdir -p "$base_dir/$project_name/{css,js,tests}"

# Adding boilerplate code
echo "/* Default CSS */" > "$base_dir/$project_name/css/style.css"
echo "// JavaScript file" > "$base_dir/$project_name/js/script.js"
echo "Simple test script" > "$base_dir/$project_name/tests/test.js"

# Adding .gitignore file
echo "node_modules/" > "$base_dir/$project_name/.gitignore"

# Performing simple tests

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

# Reminder to link the local repository to a remote one
echo "Don't forget to link this project with a remote GitHub repository!"
