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


                                
 PROJECT STRUCTURE

automated-web-deployment/
│
├── www/
│   └── index.html
├── deploy_web_app.sh
└── README.md


www/index.html

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
   <!DOCTYPE html>
<h# Project Title

This is a sample project.

## Quick Start

To deploy the application, follow the steps below.

### HTML Content

Create an `index.html` file with the following content:

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
e
sudo apt install -y nginx git

# Clone the web application from GitHub
echo "Cloning the web application repository from GitHub..."
sudo git clone https://github.com/csanhouidi/automated-web-deployment.git /var/www/html/automated-web-deployment


# Set up Nginx to serve the HTML file
echo "Setting up Nginx to serve the HTML file..."
sudo cat <<EOL > /etc/nginx/sites-available/simpleweb



server {
    listen 80;
    server_name yourdomain.com;

    root /var/www/html/automated-web-deployment/www;
    index index.html;

    location / {
        try_files \$uri \$uri/ =404;
    }
}
EOL


# Enable the new Nginx configuration
echo "Enabling the new Nginx configuration..."
sudo ln -s /etc/nginx/sites-available/simpleweb /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl restart nginx

echo "Web application deployed successfully!"




#Make deploy_web_app.sh executable
chmod +x deploy_web_app.sh


#Run the scrpit
./deploy_web_app.sh

