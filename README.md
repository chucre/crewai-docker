# CrewAI docker image dependencies

## Overview
This project is designed to create a Docker container for a Python-based AWS Lambda function. The Dockerfile provided sets up the environment, installs necessary dependencies, and configures the container to run the Lambda function using the AWS Lambda Runtime Interface Client (RIC).

## Dockerfile Breakdown
The Dockerfile is divided into a single main stage:

1. **Build Stage**:
    - **Base Image**: Uses `python:3.12` as the base image.
    - **Function Directory**: Creates a custom function directory at `/build/dependencies`.
    - **Dependencies Installation**: Installs `poetry`, exports the dependencies to `requirements.txt`, and installs them into the function directory.
    - **Copy Function Code**: Copies the source code to the build directory.

## How to Build and Run the Docker Container
1. **Build the Docker Image**:
    ```sh
    docker build -t my-lambda-function .
    ```

2. **Run the Docker Container**:
    ```sh
    docker run -p 9000:8080 my-lambda-function
    ```

3. **Invoke the Lambda Function**:
    You can invoke the Lambda function locally using the AWS CLI or any HTTP client by sending a POST request to `http://localhost:9000/2015-03-31/functions/function/invocations`.

## Requirements
- Docker
- AWS CLI (optional, for invoking the function locally)

## Conclusion
This project provides a streamlined way to package and deploy a Python-based AWS Lambda function using Docker. By following the steps outlined above, you can easily build and run the containerized Lambda function locally or in any Docker-supported environment.
