# Jenkins Pipeline for Dockerized Java Application

This Jenkins pipeline automates the process of building a Docker image for a Java application, pushing it to Docker Hub, and deploying it to an AWS EC2 instance.

## Pipeline Overview

1. **Checkout**: Retrieves the latest code from the specified GitHub repository.
2. **Build WAR File**: Compiles and packages the application using Maven.
3. **Build Docker Image**: Creates a Docker image for the application.
4. **Login to Docker Hub**: Logs in to Docker Hub and pushes the Docker image.
5. **Deploy to AWS EC2**: Pulls the Docker image from Docker Hub and deploys it to an AWS EC2 instance.

## Prerequisites

- **Jenkins**: Ensure Jenkins is installed and configured on your system.
- **Docker**: Docker must be installed and running on the Jenkins server.
- **AWS EC2 Instance**: An AWS EC2 instance where the Docker image will be deployed.
- **GitHub Repository**: The repository where the source code is stored.
- **AWS Credentials**: AWS credentials for deploying to EC2.

## Configuration

1. **Docker Hub Credentials**: Create and configure Docker Hub credentials in Jenkins and update the `DOCKER_CREDENTIALS_ID` in the pipeline.

2. **AWS Credentials**: Configure AWS credentials in Jenkins and update the `aws-credentials` ID in the pipeline.

3. **EC2 Instance Configuration**:
   - Update the `EC2_USER` with the appropriate EC2 user.
   - Update the `EC2_HOST` with your EC2 instance's IP address or DNS name.
   - Ensure that the EC2 instance has Docker installed and configured.

4. **Docker Image Name**: Update the `IMAGE_NAME` and the image name in the pipeline to match your Docker image naming convention.

## Pipeline Stages

- **Checkout**: Clones the repository.
- **Build WAR File**: Uses Maven to build the WAR file.
- **Build Docker Image**: Builds the Docker image from the Dockerfile.
- **Login to Docker Hub**: Authenticates and pushes the Docker image to Docker Hub.
- **Deploy to AWS EC2**: Connects to the EC2 instance, pulls the Docker image, stops and removes any existing container, and runs the new container.

## Usage

1. Add this pipeline script to a Jenkins Pipeline job.
2. Configure the necessary credentials and environment variables in Jenkins.
3. Trigger the build manually or set up a webhook for automatic builds.

## Post-Build Actions

- **Always**: Cleans up the workspace after the build.
- **Success**: Prints a success message.
- **Failure**: Prints a failure message.

## Troubleshooting

- Ensure that all credentials and environment variables are correctly configured.
- Verify that the Docker and AWS CLI tools are properly installed and accessible.
- Check Jenkins logs for detailed error messages if the pipeline fails.


