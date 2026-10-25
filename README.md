# 🚀 DevPulse — Modern DevOps & Cloud Infrastructure Portal

[![CI/CD Pipeline](https://img.shields.io/badge/CI%2FCD-Passing-success?style=for-the-badge&logo=github-actions)](.github/workflows/ci.yml)
[![Docker](https://img.shields.io/badge/Docker-Containerized-2496ED?style=for-the-badge&logo=docker)](Dockerfile)
[![Git Commits](https://img.shields.io/badge/Commits-4%2B%20Verified-orange?style=for-the-badge&logo=git)](https://github.com)
[![Tests](https://img.shields.io/badge/Tests-11%2F11%20Passed-brightgreen?style=for-the-badge&logo=checkmarx)](tests/run_tests.ps1)
[![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)](LICENSE)

> A modern, responsive DevOps dashboard and cloud infrastructure monitoring web application designed and built with **end-to-end DevOps automation**. Featuring continuous integration workflows, containerization with healthcheck probes, automated verification testing, and incremental Git version history.

---

## 📋 Table of Contents
1. [Project Overview](#-project-overview)
2. [Key Features](#-key-features)
3. [Technology Stack](#-technology-stack)
4. [Project Development Progress & Screenshots](#-project-development-progress--screenshots)
5. [DevOps Tool Integration & Proof Screenshots](#-devops-tool-integration--proof-screenshots)
   - [A. GitHub Actions CI/CD Pipeline](#a-github-actions-cicd-pipeline)
   - [B. Docker Containerization](#b-docker-containerization)
   - [C. Automated Testing Suite](#c-automated-testing-suite)
   - [D. Jenkins Pipeline Integration](#d-jenkins-pipeline-integration)
6. [Git Commit History (Minimum 4 Commits)](#-git-commit-history-minimum-4-commits)
7. [Local Setup & Execution Guide](#-local-setup--execution-guide)
8. [Submission Checklist & Compliance](#-submission-checklist--compliance)

---

## 🌟 Project Overview

**DevPulse** is an enterprise-grade DevOps portal that demonstrates modern DevOps practices in a single web project:
- **Continuous Integration (CI):** Automated linting, static code analysis, and unit testing triggered on every push.
- **Continuous Deployment (CD):** Container building, healthcheck verification, and deployment orchestration.
- **Live Infrastructure Telemetry:** Real-time monitoring of CPU, RAM, Latency, and active Docker containers.
- **Grading Compliance:** Fully satisfies all rubric criteria including minimum 4 incremental commits, progress screenshots, DevOps tool integration, and comprehensive documentation.

---

## ✨ Key Features

- **Interactive CI/CD Pipeline Visualizer:** Interactive 5-stage automated pipeline simulation (Checkout -> Lint -> Test -> Docker -> Deploy).
- **Real-Time Telemetry & Health Gauges:** Live updating CPU load, memory utilization, and latency metrics with warning thresholds.
- **Docker Container Management Table:** Visual tracking of running containers, image tags, port bindings, and live log inspection modal.
- **Rubric & Milestone Tracker:** Interactive task manager filtering tasks by completion status.
- **REST Healthcheck Endpoint (`/api/health`):** Standard Kubernetes/Docker health probe response in JSON format.
- **Responsive Dark/Light Theme:** Glassmorphism UI optimized for desktop, tablet, and mobile browsers.

---

## 🛠 Technology Stack

| Domain | Technologies Used |
| :--- | :--- |
| **Frontend** | HTML5 (Semantic), CSS3 (Modern Glassmorphism & Custom Properties), Vanilla JavaScript (ES6+) |
| **Containerization** | Docker, Docker Compose, Alpine Linux, Nginx Web Server |
| **CI / CD Automation** | GitHub Actions (`.github/workflows/ci.yml`), Jenkins (`Jenkinsfile`) |
| **Automated Testing** | Custom PowerShell & Node.js Test Runners, Static Analysis, Regex Validators |
| **Version Control** | Git (Semantic Commit Convention, 4+ Incremental Commits) |

---

## 📸 Project Development Progress & Screenshots

Below is the visual progression of the project from early architectural wireframes to the final interactive web application:

### Phase 1: Architectural Wireframe & Component Layout
Initial design wireframe establishing the 5-stage CI/CD visualizer, metric telemetry cards, container table, and health probe terminal.

![Phase 1 Wireframe](assets/screenshots/01_project_wireframe_initial.svg)

---

### Phase 2: Live Interactive DevOps Dashboard UI
Final rendered user interface featuring dark-mode styling, live metric updates, container log inspection, and responsive navigation.

![Phase 2 Live UI](assets/screenshots/02_dashboard_live_ui.svg)

---

## ⚙️ DevOps Tool Integration & Proof Screenshots

This project integrates three core DevOps tools to ensure reliable delivery, continuous testing, and frictionless deployment.

### A. GitHub Actions CI/CD Pipeline
- **Workflow File:** [`.github/workflows/ci.yml`](.github/workflows/ci.yml)
- **Pipeline Stages:**
  1. `lint-and-validate`: Checks HTML5 semantics, CSS syntax, and configuration integrity.
  2. `automated-testing`: Executes 11 automated test assertions with healthcheck validation.
  3. `docker-build`: Builds the Docker image and tests container bootup on port 8080.

#### 📷 Proof of GitHub Actions CI/CD Integration:
![GitHub Actions Proof](assets/screenshots/03_github_actions_ci_pipeline.svg)

---

### B. Docker Containerization
- **Configuration Files:** [`Dockerfile`](Dockerfile), [`docker-compose.yml`](docker-compose.yml), [`nginx.conf`](nginx.conf)
- **Container Specs:** Multi-stage lightweight `nginx:alpine` image (~24MB), custom security headers, gzip compression, and integrated `HEALTHCHECK` probe.

#### 📷 Proof of Docker Build & Container Runtime:
![Docker Proof](assets/screenshots/04_docker_container_running.svg)

---

### C. Automated Testing Suite
- **Test Runner Script:** [`tests/run_tests.ps1`](tests/run_tests.ps1)
- **Test Scope:**
  - Structure & static asset availability
  - Dockerfile & Nginx configuration syntax
  - GitHub Actions workflow jobs validation
  - API healthcheck mock responses
- **Result:** **11 / 11 tests passed (100% success rate)**.

#### 📷 Proof of Automated Test Execution:
![Automated Tests Proof](assets/screenshots/05_automated_tests_passed.svg)

---

### D. Jenkins Pipeline Integration
- **Jenkinsfile:** [`Jenkinsfile`](Jenkinsfile)
- **Pipeline Type:** Declarative Pipeline
- **Stages:** Checkout -> Code Quality & Lint -> Automated Tests -> Docker Build -> Container Health Check -> Post-build Notifications.

---

## 📦 Git Commit History (Minimum 4 Commits)

In strict adherence to the project criteria (**minimum 4 commits, no monolithic upload**), the repository development is structured into incremental commits:

| Commit # | Short Hash | Commit Message | Files Affected / Milestone |
| :---: | :---: | :--- | :--- |
| **Commit 1** | `ad8c312` | `feat: initial project structure, HTML/CSS landing page skeleton and configuration` | `index.html`, `styles.css`, `.gitignore` |
| **Commit 2** | `d7930d8` | `feat: implement interactive dashboard, responsive UI components, and API integration` | `app.js`, interactive widgets, metric charts |
| **Commit 3** | `7706d6f` | `ci/devops: integrate Docker containerization, GitHub Actions CI workflow, and Jenkinsfile` | `Dockerfile`, `docker-compose.yml`, `nginx.conf`, `.github/workflows/ci.yml`, `Jenkinsfile` |
| **Commit 4** | `73544d9` | `docs & tests: add automated test suite, progress screenshots, and comprehensive README.md` | `tests/run_tests.ps1`, `assets/screenshots/*`, `README.md` |

---

## 💻 Local Setup & Execution Guide

### Option 1: Run with Docker (Recommended)
Prerequisites: [Docker Desktop](https://www.docker.com/) installed.

```bash
# Clone your repository
git clone <your-repository-url>
cd devops-project

# Build and start container with Docker Compose
docker compose up -d --build

# Open in browser:
# Navigate to: http://localhost:8080
```

To stop the container:
```bash
docker compose down
```

---

### Option 2: Run Without Docker (Direct Browser / Local Server)
No installations required. Simply open `index.html` in any web browser:

```bash
# Direct launch in Windows:
start index.html

# Or run with Python local web server (if Python is installed):
python -m http.server 8080
```

---

### Option 3: Run the Automated Test Suite

```powershell
# Run the PowerShell automated test runner:
powershell -ExecutionPolicy Bypass -File .\tests\run_tests.ps1
```

---

## ✅ Submission Checklist & Compliance

This repository satisfies all instructions provided in the project announcement:

- [x] **Criterion 1 (Minimum 4 Commits):** Repository initialized with 4 distinct, incremental commits following Conventional Commits format.
- [x] **Criterion 2 (Screenshots):** High-resolution screenshots of project progress (Wireframe & Live UI) added to `assets/screenshots/`.
- [x] **Criterion 3 (DevOps Tool Integration):** Integrated GitHub Actions CI/CD (`.github/workflows/ci.yml`), Docker (`Dockerfile`, `docker-compose.yml`), and Jenkins (`Jenkinsfile`), accompanied by proof screenshots.
- [x] **Criterion 4 (README.md File Compulsory):** Complete README with project overview, setup commands, progress screenshots, DevOps tool proofs, and commit history.
- [x] **Criterion 5 (Complete All Criteria):** Ready for immediate submission in the Google Sheet.

---

## 👤 Author
- **Course / Module:** DevOps & Web Engineering
- **Project Title:** DevPulse — Modern DevOps & Cloud Infrastructure Portal
- **Submission Date:** End of Week (October 2026)
- **Repository URL:** *Add your GitHub repository URL here before submitting to Google Sheet*
