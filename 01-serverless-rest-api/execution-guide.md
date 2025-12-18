# Execution Guide: Building a Serverless REST API Using AWS Lambda and Amazon API Gateway

This document provides a step-by-step execution guide for building, deploying, and validating a serverless REST API using AWS Lambda and Amazon API Gateway.  
The workflow includes Lambda function creation, external API integration, API Gateway configuration, deployment, testing, and cleanup.

---

## I. Create and Test the AWS Lambda Function

1. Log in to the AWS Management Console.
2. Search for AWS Lambda and select Create function.
3. Configure the function:
   - Function name: my-new-lambda-function
   - Runtime: Python 3.9
4. Keep all other settings as default and create the function.
5. Review the auto-generated code in `lambda_function.py`.

### Test the Lambda Function
1. In the Lambda console, select the Test option.
2. Choose Create new test event.
3. Enter an event name (example: NewEvent).
4. Remove the default JSON and replace it with:

{
  "test": "test data"
}

5. Save and run the test.
6. Verify the response output in the execution results.

---

## II. Configure External API Integration

1. Create a new file in the Lambda function named `config.py`.
2. Add the following variable:

base_url = "jsonplaceholder"

3. Open a browser and navigate to the JSONPlaceholder API documentation.
4. Copy the base URL:

https://jsonplaceholder.typicode.com/

5. Replace the value in `config.py` with the copied URL.
6. Modify `lambda_function.py` to call the external API using the base URL.
7. Deploy the updated Lambda function.
8. Test the function and confirm the response matches the external API output.

---

## III. Create and Configure the REST API Using API Gateway

1. Search for API Gateway in the AWS Console and open it.
2. Click Create API.
3. Select REST API and choose Build.
4. Configure the API:
   - API name: get-user-data
   - Endpoint type: Edge-optimized
   - Security policy: SecurityPolicy_TLS12_2018-EDGE
5. Create the API.

### Enable CORS
1. In the Resources section, select Enable CORS.
2. Save using default settings.

### Create GET Method
1. Click Create Method.
2. Configure the method:
   - Method type: GET
   - Integration type: Lambda
   - Lambda function: my-new-lambda-function
3. Create the method.
4. Open the Test tab and execute the method.
5. Verify the response matches the external API output.

---

## IV. Deploy the API

1. Select Deploy API.
2. Choose New Stage.
3. Stage name: dev
4. Deploy the API successfully.

---

## V. Test the Deployed API

1. In Stage Details, copy the Invoke URL.
2. Open Postman.
3. Paste the URL and send a GET request.
4. Confirm the response matches:
   - Lambda test output
   - API Gateway test output
   - External API response

---

## VI. Add API Gateway as a Trigger for Lambda

1. Return to the Lambda function console.
2. Select Add Trigger.
3. Configure the trigger:
   - Source: API Gateway
   - Intent: Use existing API
   - Existing API: get-user-data
   - Deployment stage: dev
   - Security: Open
4. Add the trigger.
5. Copy the generated API endpoint.
6. Open the endpoint in a browser.
7. Verify that the response matches the expected external API data.

---

## VII. Cleanup

1. Delete the AWS Lambda function.
2. Delete the REST API from Amazon API Gateway.

---

## Conclusion

This execution guide demonstrates the complete lifecycle of building a serverless REST API using AWS Lambda and Amazon API Gateway. Following these steps provides hands-on experience with serverless compute, API management, external service integration, and secure deployment practices on AWS. The workflow forms a strong foundation for building scalable, low-maintenance backend services using serverless architecture.

