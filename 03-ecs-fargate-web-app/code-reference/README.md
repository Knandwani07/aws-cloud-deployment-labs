# 💻 Code Reference

This directory contains the source code used in the **Containerized NGINX Web Application Deployment** project.

The files in this folder represent the core components required to build and run a containerized **NGINX web server** using Docker. They are intended to be referenced alongside the project execution guide and documentation.

---

## File Overview

### `Dockerfile`

This file defines the Docker image configuration for the NGINX web application.

Purpose:
- Builds a lightweight container image using the official NGINX base image.
- Packages the static web content into the container.
- Prepares the application to be served via the NGINX web server.

Key Responsibilities:
- Specify the base NGINX image.
- Copy the static `index.html` file into the NGINX web root.
- Enable the container to serve the web page on port 80.

---

### `index.html`

This file contains the static HTML content served by the NGINX web server.

Purpose:
- Acts as the entry point web page for the application.
- Displays deployment and environment metadata.
- Confirms successful container deployment and runtime stability.

Key Responsibilities:
- Provide a simple, readable web interface.
- Display deployment status information.
- Validate that the NGINX container is serving content correctly.

---

## Usage Notes

- The `Dockerfile` and `index.html` must reside in the same directory.
- The Docker image is built using the `Dockerfile`.
- During the build process, `index.html` is copied into the NGINX container.
- The container serves the web page using the default NGINX configuration.
- This setup is suitable for local testing as well as cloud deployments (ECS, EKS, etc.).

---

## Related Documentation

For step-by-step instructions and architectural context, refer to:
- Project execution guide
- Project overview documentation
- Root `README.md`

---

## Disclaimer

This setup is intended for learning and demonstration purposes only.
It uses a basic NGINX configuration and static content and is not hardened for production workloads.
