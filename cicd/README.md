# CI/CD Module

This module demonstrates the implementation of basic Continuous Integration (CI) and Continuous Deployment (CD) workflows using GitHub Actions and Docker.

The goal of this module was to automate common development tasks such as testing, linting, container image building, and pushing Docker images to a remote registry.

---

# Folder Structure

```text
cicd/
├── task-1/
│   ├── app.py
│   ├── test_app.py
│   ├── requirements.txt
│
├── task-2/
│   ├── app.py
│   ├── Dockerfile
│
├── screenshots/
│
└── README.md
```

---

The GitHub Actions workflow YAML files are stored inside `.github/workflows/`, as this is the default directory GitHub uses to automatically detect and execute workflows.

# Task 1 – Continuous Integration Pipeline

## Objective

The objective of Task 1 was to build a basic CI pipeline that automatically runs checks whenever code is pushed to the repository.

The pipeline performs the following actions:

- Checks out the repository code
- Sets up Python
- Installs dependencies
- Runs linting using Flake8
- Runs unit tests using Python unittest

---

## Application

A small Python application was created:

```python
def say_hello():
    return "Hello world!"
```

A unit test was also created to validate the function output.

---

## CI Workflow Features

The workflow was configured using GitHub Actions.

Key features included:

- Automatic execution on push
- Path-based triggering so unrelated repository changes do not trigger the workflow
- Use of a working directory to simplify workflow commands
- Linting enforcement using Flake8
- Automated unit testing

---

## Linting

Flake8 was used to enforce Python code style standards.

Initially, the linting stage failed due to:

- Incorrect spacing
- Missing blank lines
- Missing newline at end of file

After correcting the formatting issues, the pipeline passed successfully.

This demonstrated how CI pipelines can automatically enforce code quality standards.

---

## Testing

Python’s built-in `unittest` framework was used to validate the application behaviour.

The workflow automatically executes the tests during each push event.

---

# Task 2 – Continuous Deployment Workflow

## Objective

The objective of Task 2 was to automate the building and publishing of a Docker image using GitHub Actions.

The workflow performs the following actions:

- Checks out the repository
- Authenticates with Docker Hub
- Builds a Docker image
- Tags the image using the Git commit SHA
- Pushes the image to Docker Hub automatically

---

## Docker Application

The same Python application from Task 1 was containerised using Docker.

The Dockerfile:

- Uses a lightweight Python base image
- Copies the application into the container
- Executes the Python application when the container starts

---

## Docker Image Automation

The GitHub Actions workflow automatically builds and pushes the image whenever changes are pushed to the `task-2` directory.

A short Git commit SHA was used as the Docker image tag. This allows each image version to be linked directly to a specific commit.

Example image format:

```text
uwaisbhuta/cicd:a1b2c3d
```

---

## GitHub Secrets

Docker Hub credentials were stored securely using GitHub Actions Secrets.

This prevented sensitive credentials from being exposed inside the workflow YAML files.

---

# Key Concepts Learned

Throughout this module, I gained practical experience with:

- GitHub Actions workflows
- CI/CD automation concepts
- Path-based workflow triggers
- Working directories in GitHub Actions
- Python linting and testing
- Docker image building
- Docker image tagging
- Docker Hub authentication
- GitHub Secrets management
- Automated Docker image publishing

---

# Troubleshooting and Challenges

Some of the issues encountered during the implementation included:

- Incorrect YAML syntax
- Python version formatting issues in GitHub Actions
- Flake8 linting failures
- Understanding working-directory behaviour
- Understanding workflow trigger paths
- Docker Hub authentication setup

Each issue was resolved through testing, debugging workflow logs, and iterative improvements.

---

# Screenshots

Screenshots demonstrating:

- Successful workflow runs
- Linting and testing stages
- Docker image pushes
- Docker Hub repository
- Workflow YAML files
- Repository structure

can be found in the `screenshots/` folder.
