#### Update package list and install necessary packages
``` #!/bin/bash
  - echo "Updating package list and installing necessary packages..."  
  - sudo apt update
  - sudo apt install -y nginx git
```
#### Clone the web application from GitHub
```
echo "Cloning the web application repository from GitHub..."
sudo git clone https://github.com/csanhouidi/shell-scripting /var/www/html/shell-scripting
```
#### Set up Nginx to serve the HTML file
```echo "Setting up Nginx to serve the HTML file..."
sudo bash -c 'cat <<EOL > /etc/nginx/sites-available/simpleweb
