# Project Setup with a Bash Script

## Introduction
Every developer knows that setting up a new project can be time-consuming. This blog post introduces a Bash script designed to automate the process, making it quicker and more consistent.

## The Script's Purpose
The `script.sh` is crafted to create a new project directory with all the necessary subdirectories and files. It's an essential tool for developers who want to save time on repetitive setup tasks.

## Features of the Script
Our script offers several key functionalities:
- **Automatic Directory Creation**: Sets up standard directories for CSS, JS, and tests.
- **Boilerplate Code**: Generates basic CSS and JS files to kickstart development.
- **Simple Validation Tests**: Checks if the CSS and JS files are properly created.
- **Easy to Use**: Can be run directly from the command line with a project name as an argument.
- **.gitignore File**: Includes a .gitignore file to keep your repository clean.

### Sample Code
Here's a snippet from our script:
```bash
# Code snippet from script.sh
echo "/* Default CSS */" > "$base_dir/$project_name/css/style.css"

