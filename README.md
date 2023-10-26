# DevOps Challenge: From Local to Cloud

---

## Objective

Develop a simple web application and deploy it on AWS, using DevOps best practices for infrastructure provisioning, configuration, and CI/CD.

---

## Requirements

- **Git Repository**: Create a repository on GitHub called `simple_app_cloud`. This will be the development team's repository!
- **Documentation**: Document the entire process and instructions in the repository's README.
- **Development**:
    - Develop a web application according to the proposed challenge.
    - Create a `Dockerfile` to containerize the application.
    - Test the application locally using Docker.
- **Infrastructure Provisioning**:
    - Write Terraform scripts to provision a VM EC2 in the `us-east-1` region of AWS.
    - Configure a key pair and security groups for the VM to allow SSH and HTTP/s connections.
- **VM Configuration**:
    - Write Ansible playbooks to:
        - Configure the VM.
        - Install Docker.
        - Clone the `simple_app_cloud` repository.
        - Share it with the development team users.
        - Build and run the Docker container with the application.
- **CI/CD**:
    - Configure a CI/CD pipeline using GitHub Actions to automate the provisioning, configuration, and deployment of the application. The trigger will be a merge into the `main` branch of the devops repository (not the `hackweek_devs2blu` repository).

---

## Guidelines

1. **Initialization**:
    - Create a repository on GitHub called `simple_app_cloud` for the pipeline.
    - Create a README with a project description and initial instructions.

2. **Local Development**:
    - Choose the language and framework for the application.
    - Organize the repository according to best practices (directory structure, where to store keys, etc.).
    - Develop the `Dockerfile` and test the application locally.

3. **Infrastructure Provisioning**:
    - Write Terraform scripts to provision the VM EC2 in AWS.
    - Configure the key pair and security groups.

4. **VM Configuration**:
    - Write Ansible playbooks to configure the VM and deploy the application.

5. **CI/CD**:
    - Configure the CI/CD pipeline in GitHub Actions.
    - Test the pipeline by making changes to the application and observing the automatic deployment on AWS.

6. **Final Testing**:
    - Ensure the application is functioning correctly on AWS.
    - Document any issues encountered and how they were resolved in the README.

**Good luck with the DevOps challenge!**

