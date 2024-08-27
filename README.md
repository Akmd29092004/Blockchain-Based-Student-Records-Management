# Blockchain-Based Student Records Management

## Vision

The goal of this project is to develop a secure and decentralized system for managing student records using blockchain technology. This system ensures data integrity, transparency, and security while simplifying the verification and management of academic credentials for both educational institutions and students.

## Features

- **Admin Management:**
  - **Add Admin:** Allows the contract creator to add new administrators.
  - **Remove Admin:** Allows the contract creator to remove administrators.
  
- **Record Management:**
  - **Update Attendance:** Administrators can update the attendance of a student.
  - **Update Marks:** Administrators can update the academic marks of a student.
  - **Update Fees Paid:** Administrators can record the fees paid by a student.
  - **Issue Certification:** Administrators can issue certifications by storing a hash on the blockchain.

- **Record Retrieval:**
  - **Get Record:** Allows anyone to view a student’s record.

## Flowchart

The following flowchart illustrates the workflow of the smart contract:

```mermaid
graph TD
    A[Start] --> B[Admin Authorization]
    B --> C[Add Admin]
    B --> D[Remove Admin]
    B --> E[Record Management]
    E --> F[Update Attendance]
    E --> G[Update Marks]
    E --> H[Update Fees Paid]
    E --> I[Issue Certification]
    I --> J[Record Retrieval]
    J --> K[Get Record]
    K --> L[End]
contract address:0xe663ccfbd2ccfda57012ab029b3bbe82afb906b6
![image](https://github.com/user-attachments/assets/5cfd445d-31ae-4132-8ceb-a0af00b6407a)

