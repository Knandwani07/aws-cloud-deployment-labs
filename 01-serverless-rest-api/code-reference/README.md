# 💻 Code Reference

This directory contains the source code used in the **Building a Serverless REST API Using AWS Lambda and Amazon API Gateway** project.

The files in this folder represent the core implementation of the AWS Lambda function and its supporting configuration. They are intended to be referenced alongside the execution guide and project documentation.

---

## File Overview

### `lambda_function.py`

This file contains the AWS Lambda handler function.

**Purpose:**
- Acts as the backend logic for the REST API.
- Receives requests from Amazon API Gateway.
- Makes an outbound HTTP request to an external REST API.
- Processes the response and returns it in JSON format.

**Key Responsibilities:**
- Handle Lambda invocation events.
- Fetch data from the external API endpoint.
- Return HTTP status codes and response payloads in a structured format.

---

### `config.py`

This file contains configuration values used by the Lambda function.

**Purpose:**
- Stores external configuration such as API base URLs.
- Keeps configuration separate from application logic for better maintainability.

**Key Responsibilities:**
- Define the base URL for the external REST API.
- Allow easy updates to configuration without modifying core logic.

---

## Usage Notes

- These files are referenced by the Lambda function during execution.
- The `config.py` file is imported into `lambda_function.py`.
- Both files should be deployed together as part of the same Lambda function package.
- Configuration values can be extended in the future to support multiple environments (e.g., development, staging, production).

---

## Related Documentation

For step-by-step instructions and architectural context, refer to:
- `execution-guide.md`
- `project-overview.md`
- Root `README.md`

---

## Disclaimer

The external API used in this project is intended for demonstration purposes only and is not recommended for production workloads.
