# Shell-scripting
Project: Automated Web Application Deployment

# Automated Web Application Deployment

This project provides a shell script to automate the deployment of a simple Flask web application on an Ubuntu server. The script installs necessary packages, clones the web application from a GitHub repository, sets up a virtual environment, installs Flask, and configures Nginx to serve the application.

## Prerequisites

- An Ubuntu server
- Git installed on the server
- A GitHub repository containing your web application
- Nginx installed on the server (the script will install it if not already installed)

## Usage

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/csanhouidi/automated-web-deployment.git
   cd automated-web-deployment

