# **URL Shortener Deployment Guide**

## **📌 Overview**
This guide explains how to deploy a **Node.js + PostgreSQL URL shortener** using AWS services. The infrastructure is fully automated with **AWS CDK (JavaScript)**, and the deployment process uses **GitHub Actions + AWS CodeDeploy** for continuous integration and delivery.

## **📁 Project Structure**
```
url-shortener/
├── .github/workflows/deploy.yml   # GitHub Actions CI/CD workflow
├── lib/
│   ├── url-shortener-stack.js     # AWS CDK infrastructure setup
├── scripts/
│   ├── start.sh                   # Starts the app on EC2
├── src/
│   ├── app.js                     # Express.js API
│   ├── db.js                      # PostgreSQL connection
├── test/
│   ├── urlShortener.test.js        # Jest tests
├── appspec.yml                     # AWS CodeDeploy configuration
├── package.json                    # Dependencies
└── README.md                        # Project documentation
```

---

## **1️⃣ Infrastructure Setup (AWS CDK)**
The AWS infrastructure is defined using **AWS CDK (JavaScript)**. This automates:
- EC2 instance creation with Node.js auto-installed.
- RDS PostgreSQL database setup.
- Application Load Balancer (ALB) for traffic handling.
- S3 bucket for deployments and database backups.
- IAM roles and security groups for permissions.

### **💻 Install AWS CDK and Dependencies**
```sh
npm install -g aws-cdk
npm install
```

### **🚀 Deploy Infrastructure**
```sh
cdk bootstrap
cdk deploy
```
✅ This provisions all AWS resources automatically.

---

## **2️⃣ Application Deployment (CI/CD Pipeline)**
The **GitHub Actions workflow** automates application deployment:
- Runs tests before deployment.
- Uploads the app to an S3 bucket.
- Triggers AWS CodeDeploy to update EC2.

### **🌍 Setup GitHub Secrets**
In your GitHub repository, set the following secrets:
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`

### **🔁 Push to GitHub (Triggers Deployment)**
```sh
git add .
git commit -m "Deploy update"
git push origin main
```
✅ This triggers **GitHub Actions**, which deploys the app to AWS.

---

## **3️⃣ Running the App on EC2**
The **EC2 instance automatically installs Node.js** and clones the repository when launched. If needed, manually restart the app:

```sh
ssh ec2-user@your-ec2-public-ip
cd /home/ec2-user/app
npm install
nohup node server.js &
```
✅ The app is now running in the background.

---

## **4️⃣ Database Management (AWS RDS)**
### **🛠 Connect to the PostgreSQL Database**
Find the **RDS endpoint** from AWS and connect:
```sh
psql -h your-db-endpoint -U admin -d urlshortener
```

### **🛠 Database Backups (S3)**
- Automated backups are stored in **S3**.
- AWS Lambda triggers daily backups.

---

## **5️⃣ Load Balancer & Scaling**
- The **Application Load Balancer (ALB)** manages incoming traffic.
- AWS Auto Scaling can be added for high-traffic scenarios.

---

## **✅ Summary**
✔ **Fully automated AWS infrastructure** with CDK.
✔ **CI/CD pipeline** auto-deploys on every GitHub push.
✔ **EC2 auto-installs Node.js & starts the app**.
✔ **AWS RDS handles database with S3 backups**.
✔ **Application Load Balancer ensures scalability**.

🚀 Now your **URL shortener is live on AWS!**

