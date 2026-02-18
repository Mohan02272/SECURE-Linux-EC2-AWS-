# Secure Linux EC2 Deployment Project

## Overview

This project demonstrates production-style deployment on AWS EC2 using:

- Apache Web Server
- Symlink-based release management
- Separate deploy user
- Git-based deployment
- Automation script

## Architecture

GitHub → Deploy Script → /var/www/releases → Symlink → Apache → Browser

## Production Structure

/var/www/releases → contains all versions  
/var/www/current → symlink to active release  

Apache DocumentRoot points to:

/var/www/current

## Deployment Script Logic

deploy.sh performs:

1. Create timestamp release directory
2. Clone GitHub repository
3. Update symlink
4. Activate new version

## Skills Demonstrated

- Linux user management
- File permissions
- Apache configuration
- Symlink management
- Production thinking
- Basic DevOps deployment flow

## Author

Rashedul Islam Mohan

