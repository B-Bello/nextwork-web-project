#  End-to-End CI/CD Pipeline on AWS  
### 7-Day Hands-On DevOps Challenge

This repository documents my journey building a complete CI/CD pipeline on AWS from scratch.

Over 7 intensive days, I moved from manually deploying a Java web application to designing a fully automated pipeline that builds, packages, and deploys code automatically whenever changes are pushed to GitHub.

This project was not just about getting things to work, it was about understanding *why* they work, debugging real-world failures, and building confidence as a DevOps engineer.

---

##  Project Overview

The goal of this project was to:

- Build a Java web application using Maven  
- Secure dependency management using AWS CodeArtifact  
- Automate application builds using AWS CodeBuild  
- Automate deployments using AWS CodeDeploy  
- Provision infrastructure using AWS CloudFormation  
- Orchestrate the full CI/CD workflow using AWS CodePipeline  

By the end of this challenge, I had a fully automated pipeline that:

✔ Pulls source code from GitHub  
✔ Builds and packages the application  
✔ Stores build artifacts in S3  
✔ Deploys automatically to an EC2 instance  

---

##  Architecture Overview

The CI/CD pipeline consists of the following services:

- **GitHub** – Source code repository  
- **AWS CodePipeline** – Pipeline orchestration  
- **AWS CodeBuild** – Application build and packaging  
- **AWS CodeDeploy** – Deployment automation  
- **AWS CloudFormation** – Infrastructure as Code provisioning  
- **Amazon S3** – Artifact storage  
- **Amazon EC2** – Application hosting  
- **AWS IAM** – Secure role-based permissions  
- **AWS CodeArtifact** – Secure dependency management  

---

##  What I Built (Step-by-Step Progression)

### Day 1–2: Source Control & GitHub Integration
- Created and configured a GitHub repository
- Connected EC2 local repo to GitHub
- Managed remote origins properly
- Learned how small misconfigurations affect version control workflows

---

### Day 3: Securing Dependencies with CodeArtifact
- Created CodeArtifact repository
- Configured Maven to pull dependencies securely
- Implemented IAM policies for controlled access
- Strengthened understanding of supply chain security in DevOps

---

### Day 4: Automating Builds with CodeBuild
- Created CodeBuild project
- Wrote `buildspec.yml`
- Stored artifacts in S3
- Debugged region mismatches and IAM permission issues

Key lesson: Logs are your best friend in DevOps.

---

### Day 5: Automating Deployment with CodeDeploy
- Wrote deployment scripts (start, stop, install)
- Created `appspec.yml`
- Configured deployment groups
- Resolved issues with:
  - CodeDeploy agent installation
  - Incorrect EC2 targeting
  - IAM role attachment
  - Tomcat version compatibility
  - WAR packaging errors

This was the most challenging stage. It required patience, persistence, and deep troubleshooting.

---

### Day 6: Infrastructure as Code with CloudFormation
- Generated and manually refined CloudFormation templates
- Used `DependsOn` to control resource creation order
- Debugged repeated stack rollbacks
- Learned precision and discipline in YAML configuration

This stage strengthened my understanding of infrastructure dependency management.

---

### Day 7: Full CI/CD Orchestration with CodePipeline
- Integrated all services into one automated workflow
- Corrected artifact reference errors (SourceArtifact vs BuildArtifact)
- Validated full end-to-end automation

Final result:  
A working CI/CD pipeline triggered automatically on GitHub push.

---

## ⚠️ Real Challenges I Faced

This project was not smooth — and that’s what made it valuable.

Here are some real issues I encountered:

- CodeDeploy agent not installed
- IAM roles missing or misconfigured
- Deployment group targeting wrong EC2 instance
- Tomcat incompatibility on Amazon Linux 2023
- Maven not producing WAR file (`mvn compile` vs `mvn package`)
- CloudFormation stack rollbacks due to YAML errors
- Region mismatches in build configuration
- Artifact misconfiguration in pipeline stages

Each issue required:
- Log inspection
- Root cause analysis
- Configuration correction
- Retesting

This challenge taught me that DevOps is less about memorizing services and more about systematic debugging and calm problem-solving.

---

##  Key Technical Concepts Strengthened

- CI/CD pipeline design
- Infrastructure as Code (IaC)
- IAM role architecture
- Artifact management
- Maven lifecycle commands
- Linux package management
- AWS service integration patterns
- Deployment automation strategies

---

##  What This Project Really Taught Me

Beyond the tools, this challenge taught me:

- Small configuration errors can break entire systems
- Automation requires precision
- Logs are non-negotiable in troubleshooting
- Persistence matters more than speed
- DevOps is about resilience under pressure

This was not a “copy and paste” project. Every error forced me to understand the architecture more deeply.

---

##  Future Improvements

- Add automated testing stage
- Implement environment separation (dev/stage/prod)
- Introduce blue/green deployment strategy
- Integrate monitoring (CloudWatch alarms)
- Add rollback automation strategy

---

##  Acknowledgment

This project was completed as part of a structured DevOps learning challenge.  
Grateful for the structured learning path that guided the hands-on implementation.

---
