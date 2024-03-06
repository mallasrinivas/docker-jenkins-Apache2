# CI/CD Pipeline Setup Guide

This guide provides step-by-step instructions for setting up a CI/CD pipeline for the XYZ software company's website repository.

## Prerequisites

- GitHub account

## Steps

### 1. Set Up Git Workflow

- Fork the repository `https://github.com/mallasrinivas/docker-jenkins-Apache2.git` into your own GitHub account if you don't have direct access to the original repository.
- Decide on a branching strategy. Typically, you'd use a branching model like Gitflow, where you have a `master` branch for production-ready code and a `develop` branch for ongoing development.
- Ensure that the team follows the chosen Git workflow, committing changes to appropriate branches.

### 2. Configure Automated Builds

- Choose a CI/CD platform such as Jenkins, GitLab CI/CD, or GitHub Actions.
- Navigate to the repository settings on GitHub and set up a new GitHub Actions workflow file (`.github/workflows/ci-cd.yml`) with the provided contents for automated builds triggered upon commits to the `master` or `develop` branches.

### 3. Create Docker Container with Ubuntu and Apache

- Create a Dockerfile in your project directory with the provided contents to create a Docker container with Ubuntu and Apache installed.

### 4. Build Docker Image and Run Container

- Build the Docker image using the Dockerfile.
- Run the Docker container.

### 5. Verify Setup

- Commit changes to the `master` or `develop` branches of your forked repository and observe the CI/CD pipeline triggering accordingly.
- Verify that the website is accessible on port 82 for commits to the `master` branch.

By following these steps, you should have successfully implemented a CI/CD pipeline for the XYZ software company's website repository, with builds triggered automatically upon commits to the `master` or `develop` branches. Additionally, a Docker container with Ubuntu and Apache installed is used for building the code.
