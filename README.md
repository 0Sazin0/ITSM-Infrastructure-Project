
---

# Enterprise Cloud-Native ITSM Infrastructure

This repository contains the technical documentation for an enterprise-grade, cloud-native IT Service Management (ITSM) infrastructure. This project demonstrates the end-to-end engineering of a professional-grade environment built on AWS, Ubuntu, and Zammad.

## Project Overview

This infrastructure serves as an enterprise-grade technical support framework, showcasing expertise in:

* **Hybrid-Cloud Architecture:** Deploying modular AWS EC2 environments for performance, scalability, and service isolation.


* **Cross-Platform Identity Management:** Bridging Linux (Ubuntu) application hosts with Windows Active Directory using `realm` and `sssd` for centralized, secure authentication.


* **Automated Identity Bridging:** Configuring PAM modules (`pam-auth-update`) for automated home directory creation for domain-joined users.


* **Operational Governance:** Implementing ITIL-aligned policies, including granular Role-Based Access Control (RBAC) and automated SLA escalation logic to track and manage critical infrastructure incidents.



## Technical Components

* **Cloud Infrastructure:** AWS EC2 (Three-tier architecture).


* **Identity Services:** Windows Server 2025 (Active Directory) bridged with Ubuntu Linux.


* **ITSM Platform:** Zammad Helpdesk.


* **Automation:** PowerShell-based directory provisioning and Linux-based system configuration.



## Documentation

* **Project Report:** The full project methodology, architectural design, and operational validation results can be found in the `ITSM-Infrastructure-Project.docx` file within this repository.
