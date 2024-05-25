# Shell-scripting
Project: Automated Web Application Deployment
# Script to deploy a simple web application on Ubuntu using Nginx

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


                                
# Project Title

Automated Web Application Deployment

## Project Structure

automated-web-deployment/
├── deploy_web_app.sh
└── www/
└── index.html



## Quick Start

To deploy the application, follow the steps below.

### HTML Content

Create an `index.html` file with the following content and place it in the `www` directory:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hello, World!</title>
</head>
<body>
    <h1>Hello, World!</h1>
    <p>This is a simple web page served by Nginx.</p>
</body>
</html>

Create a deployment Script called deploy_we_app.sh

Create a deploy_web_app.sh file with the following content in the root of your project directory:

#!/bin/bash

# Script to deploy a simple web application on Ubuntu using Nginx

# Update package list and install necessary packages
 echo "Updating package list and installing necessary packages..."
 sudo apt update
 sudo apt install -y nginx git

# Clone the web application from GitHub
echo "Cloning the web application repository from GitHub..."
sudo git clone https://github.com/yourusername/automated-web-deployment.git /var/www/html/automated-web-deployment

# Set up Nginx to serve the HTML file
echo "Setting up Nginx to serve the HTML file..."
sudo bash -c 'cat <<EOL > /etc/nginx/sites-available/simpleweb
server {
    listen 80;
    server_name yourdomain.com;

    root /var/www/html/automated-web-deployment/www;
    index index.html;

    location / {
        try_files \$uri \$uri/ =404;
    }
}
EOL'

# Enable the new Nginx configuration
echo "Enabling the new Nginx configuration..."
sudo ln -s /etc/nginx/sites-available/simpleweb /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl restart nginx

echo "Web application deployed successfully!"

