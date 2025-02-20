# **AWS Services & Processes Explained**

## **📌 Overview**
This guide explains the **AWS services** used in our **Node.js + PostgreSQL URL shortener** project. It details what each service does and why it is included in our infrastructure.

---

## **1️⃣ Amazon EC2 (Elastic Compute Cloud)**
### **What it does:**
- EC2 provides **virtual servers** to run applications.
- We use EC2 to **host our Node.js server**.

### **Why we use it:**
✔ Provides a dedicated environment to run the URL shortener.
✔ Flexible scaling options for handling traffic increases.
✔ Automated setup with **User Data scripts** to install Node.js and deploy the app.

---

## **2️⃣ AWS RDS (Relational Database Service) - PostgreSQL**
### **What it does:**
- Managed **PostgreSQL database service**.
- Handles automated **backups, scaling, and maintenance**.

### **Why we use it:**
✔ Provides a **fully managed database** solution.
✔ **Automatic backups** ensure data safety.
✔ Easier than manually managing PostgreSQL on EC2.

---

## **3️⃣ AWS ALB (Application Load Balancer)**
### **What it does:**
- Distributes incoming traffic **across multiple EC2 instances**.
- Ensures **high availability** and improved performance.

### **Why we use it:**
✔ Helps balance load **if we scale to multiple EC2 instances**.
✔ Improves **availability and fault tolerance**.
✔ Simplifies handling **multiple requests concurrently**.

---

## **4️⃣ AWS S3 (Simple Storage Service)**
### **What it does:**
- Stores **deployment artifacts** (code packages).
- Stores **database backups**.

### **Why we use it:**
✔ Ensures we can **revert to previous versions** if needed.
✔ Provides a safe location for **PostgreSQL backups**.
✔ Highly durable and cost-efficient storage.

---

## **5️⃣ AWS IAM (Identity and Access Management)**
### **What it does:**
- Manages **permissions and security policies**.
- Controls access to **EC2, S3, RDS, and CodeDeploy**.

### **Why we use it:**
✔ Ensures **only authorized users and services** can access AWS resources.
✔ Prevents security vulnerabilities.
✔ Uses **IAM roles** for secure EC2 and RDS access.

---

## **6️⃣ AWS CodeDeploy**
### **What it does:**
- **Automates deployments** to EC2 instances.
- Ensures **zero-downtime updates**.

### **Why we use it:**
✔ Automates application deployments.
✔ **Prevents manual errors** when updating the app.
✔ Works with **GitHub Actions** to enable continuous deployment.

---

## **7️⃣ AWS Lambda (For PostgreSQL Backups)**
### **What it does:**
- Runs automated **database backup tasks**.
- Saves PostgreSQL snapshots to **S3**.

### **Why we use it:**
✔ Ensures **daily backups** of database data.
✔ Runs without needing a dedicated server.
✔ Reduces operational overhead.

---

## **8️⃣ AWS CDK (Cloud Development Kit - JavaScript)**
### **What it does:**
- Allows us to **define AWS infrastructure in JavaScript**.
- Automates deployment of EC2, RDS, S3, ALB, and IAM policies.

### **Why we use it:**
✔ Enables **Infrastructure-as-Code (IaC)** without using Terraform.
✔ Automates AWS resource creation.
✔ Simplifies deployments with a single command (`cdk deploy`).

---

## **9️⃣ GitHub Actions (CI/CD Pipeline)**
### **What it does:**
- Runs **tests, builds, and deployments**.
- Triggers **AWS CodeDeploy** automatically on new commits.

### **Why we use it:**
✔ Ensures **only tested code gets deployed**.
✔ Automates deployments from GitHub.
✔ Reduces the need for **manual intervention**.

---

## **✅ Summary**
| AWS Service   | Purpose |
|--------------|---------|
| **EC2** | Hosts the Node.js application |
| **RDS (PostgreSQL)** | Stores URLs in a managed database |
| **ALB** | Balances traffic and improves availability |
| **S3** | Stores deployment artifacts & backups |
| **IAM** | Manages permissions & security |
| **CodeDeploy** | Automates deployments to EC2 |
| **Lambda** | Automates database backups |
| **CDK** | Defines infrastructure using JavaScript |
| **GitHub Actions** | Automates CI/CD pipeline |

🚀 This setup ensures a **scalable, automated, and secure deployment** of our URL shortener. Let me know if you need further explanations! 🎯

