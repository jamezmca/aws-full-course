# **AWS-Full-Course**

A fully automated, scalable **Node.js + PostgreSQL** URL shortener deployed on **AWS** using **CDK (JavaScript), CI/CD (GitHub Actions + CodeDeploy), and AWS RDS, EC2, ALB, and S3**. This project demonstrates **end-to-end cloud infrastructure automation** and **continuous deployment**.

---

## **📌 Overview**
This repository serves as a **step-by-step guide** on deploying a full-stack URL shortener on **AWS**, automating infrastructure with **AWS CDK (JavaScript)** and setting up a **CI/CD pipeline** for seamless deployments.

This project is part of a **course** where I explain AWS services and demonstrate the entire deployment process.

---

## **🚀 Features**
✔ **Infrastructure-as-Code (IaC)** with **AWS CDK (JavaScript)**  
✔ **Automated deployments** via **GitHub Actions + AWS CodeDeploy**  
✔ **EC2 instance auto-installs Node.js** and runs the app on launch  
✔ **PostgreSQL database on AWS RDS** with **automated S3 backups**  
✔ **Application Load Balancer (ALB)** for **traffic distribution**  
✔ **Zero-downtime deployments** via AWS CodeDeploy  
✔ **Fully scalable AWS architecture** for production-ready applications  

---

## **🛠️ Technologies Used**
- **Backend:** Node.js, Express.js, PostgreSQL
- **Infrastructure:** AWS CDK (JavaScript)
- **Database:** AWS RDS (PostgreSQL)
- **Compute:** AWS EC2
- **Storage & Backups:** AWS S3
- **Traffic Management:** AWS ALB
- **Security & Access:** AWS IAM
- **CI/CD Pipeline:** GitHub Actions + AWS CodeDeploy
- **Database Backups:** AWS Lambda + S3

---

## **📂 Project Structure**
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

## **🛠 Deployment Guide**
### **1️⃣ Clone the Repository**
```sh
git clone https://github.com/YOUR_GITHUB_USERNAME/aws-url-shortener.git
cd aws-url-shortener
```

### **2️⃣ Install AWS CDK and Dependencies**
```sh
npm install -g aws-cdk
npm install
```

### **3️⃣ Deploy Infrastructure**
```sh
cdk bootstrap
cdk deploy
```
✅ This provisions all AWS resources (EC2, RDS, S3, ALB, IAM, CodeDeploy, Lambda, etc.)

### **4️⃣ Configure GitHub Secrets**
In your GitHub repository, set the following **secrets**:
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`

### **5️⃣ Deploy the Application (CI/CD)**
On every push to the **main** branch, **GitHub Actions** will:
- **Run tests**
- **Upload the app to S3**
- **Trigger AWS CodeDeploy** to update EC2

✅ Just push your code:
```sh
git add .
git commit -m "Deploy update"
git push origin main
```

---

## **6️⃣ Running the App on EC2**
The **EC2 instance automatically installs Node.js** and clones the repository. If needed, manually restart the app:
```sh
ssh ec2-user@your-ec2-public-ip
cd /home/ec2-user/app
npm install
nohup node server.js &
```
✅ The app is now running in the background.

---

## **7️⃣ PostgreSQL Database Backups (AWS S3)**
- **Automated backups** are stored in **S3** via **AWS Lambda**.
- You can manually trigger a backup if needed.

### **Connect to RDS PostgreSQL**
```sh
psql -h your-db-endpoint -U admin -d urlshortener
```

---

## **✅ Summary**
✔ **Fully automated AWS infrastructure** with CDK  
✔ **CI/CD pipeline** auto-deploys on every GitHub push  
✔ **EC2 auto-installs Node.js & starts the app**  
✔ **AWS RDS handles database with S3 backups**  
✔ **Application Load Balancer ensures scalability**  

🚀 Now your **URL shortener is live on AWS!**

