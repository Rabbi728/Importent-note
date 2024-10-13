Set Up Let's Encrypt SSL for Nginx on Ubuntu

1\. Update System Packages
--------------------------

Update your package list and upgrade the system to ensure everything is up to date.

    sudo apt update
    sudo apt upgrade

2\. Install Certbot and Nginx Plugin
------------------------------------

Install Certbot along with the Nginx plugin to automate SSL certificate issuance and configuration.

    sudo apt install certbot python3-certbot-nginx

3\. Ensure Nginx is Properly Configured
---------------------------------------

Make sure Nginx is serving your website. Your server block (virtual host) should be configured like this:

    server {
        listen 80;
        server_name example.com www.example.com;
        root /var/www/example;
    
        location / {
            try_files $uri $uri/ =404;
        }
    }

Replace `example.com` with your actual domain name.

Check if Nginx is running:

    sudo systemctl status nginx

4\. Obtain SSL Certificate with Certbot
---------------------------------------

Run Certbot to request an SSL certificate and automatically configure Nginx.

    sudo certbot --nginx

Certbot will:

*   Ask for your domain name(s) (e.g., `example.com`, `www.example.com`).
*   Ask if you want to redirect all HTTP traffic to HTTPS. Select **Yes** to ensure all traffic is encrypted.

5\. Reload Nginx to Apply Changes
---------------------------------

After Certbot configures the SSL certificate, reload Nginx to apply the new settings.

    sudo systemctl reload nginx

6\. Test SSL Installation
-------------------------

Verify that the SSL certificate is installed and working by visiting your website via HTTPS (`https://yourdomain.com`). You can also check the certificate status:

    sudo certbot certificates

7\. Test Automatic Renewal
--------------------------

Certbot automatically sets up a cron job for certificate renewal. Test this by running:

    sudo certbot renew --dry-run

This command simulates the renewal process to ensure automatic renewals will work correctly.

8\. Manually Renew Certificates (if needed)
-------------------------------------------

If you want to manually renew your certificate, you can run:

    sudo certbot renew

9\. Firewall Configuration (if applicable)
------------------------------------------

If you're using UFW (Uncomplicated Firewall), make sure that HTTP (port 80) and HTTPS (port 443) traffic is allowed.

    sudo ufw allow 'Nginx Full'
