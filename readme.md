# Red Hat eCommerce - Product Frontend

A simple, containerized frontend application for the Red Hat eCommerce platform that displays product information and nearest store locations.

## Overview

This project is a static web application that serves as the product display component of the Red Hat eCommerce platform. It provides a clean interface for viewing product details and finding the nearest physical store locations.

## Features

- Product detail display with dynamic image loading
- Nearest store location finder
- Responsive design using Bootstrap
- Containerized deployment with Nginx

## Technologies Used

- HTML5, CSS3, JavaScript
- jQuery for DOM manipulation
- Bootstrap 5 for responsive design
- Nginx as the web server
- Docker for containerization
- Red Hat UBI 9 as the base container image

## Project Structure

```
front-end-product/
├── css/                  # CSS stylesheets including Bootstrap and custom styles
├── img/                  # Product and branding images
├── js/                   # JavaScript files including jQuery and Bootstrap
├── nginx/                # Nginx configuration
│   └── nginx.conf        # Custom Nginx configuration
├── Dockerfile            # Container build instructions
├── healthz.html          # Health check endpoint
├── index.html            # Main application page
└── README.md             # Project documentation
```

## Installation

### Prerequisites

- Docker

### Local Development

1. Clone the repository:
   ```
   git clone <repository-url>
   cd front-end-product
   ```

2. Build the Docker image:
   ```
   docker build -t redhat-ecommerce-product .
   ```

3. Run the container:
   ```
   docker run -p 8080:8080 redhat-ecommerce-product
   ```

4. Access the application at http://localhost:8080

## Deployment

### Docker Deployment

The application is containerized using Docker and can be deployed to any environment that supports Docker containers.

```
docker build -t redhat-ecommerce-product .
docker run -d -p 8080:8080 redhat-ecommerce-product
```

### Kubernetes/OpenShift Deployment

The application can be deployed to Kubernetes or OpenShift using the provided Dockerfile. The container exposes port 8080 and includes a health check endpoint at `/healthz.html`.

## Usage

- The main page displays product details and images
- Product images can be dynamically changed by passing an ID parameter in the URL
- The sidebar shows nearest store locations that can be clicked to navigate to store details

## Health Checks

The application includes a health check endpoint at `/healthz.html` that returns "OK" when the service is running properly.

## License

Copyright © Red Hat 2025