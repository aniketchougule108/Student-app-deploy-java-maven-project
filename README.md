# 🚀 CI/CD Pipeline for Java Maven Project Deployment

* A Java-based Student Management Web Application fully deployed using an end-to-end CI/CD pipeline built with **Git, GitHub, Jenkins, AWS EC2 (Ubuntu), Maven, and Apache Tomcat**.
* This project demonstrates how to automate the entire development and deployment process — from **code commit → build → deployment** — using Jenkins pipelines and cloud infrastructure.

---

### 🎯 Project Overview

* The Student App allows users to enter and manage student data such as name, age, qualification, percentage, and passing year.
* This project focuses on automating deployment through Continuous Integration and Continuous Deployment (CI/CD) using Jenkins and AWS EC2 instances.
* It provides a real-world example of DevOps implementation for Java applications.

![](./img/architecture.jpeg)
---

### 🧠 Objective
To create a fully automated deployment pipeline using Jenkins that performs the following tasks:

1. Developer clones project from GitHub and makes changes locally.
2. Changes are pushed to a personal GitHub repository (`master` branch).
3. Jenkins automatically detects changes and pulls the latest code.
4. Maven builds the Java project and generates a `.war` file.
5. Jenkins securely copies the `.war` file to a Tomcat server hosted on another EC2 instance.
6. The web application automatically restarts and is available for access on the browser.

---

### ⚙️ Technologies Used

<table border="1" cellpadding="8" cellspacing="0">
  <tr>
    <th>Category</th>
    <th>Tools / Technologies</th>
  </tr>
  <tr>
    <td>Language</td>
    <td>Java</td>
  </tr>
  <tr>
    <td>Build Tool</td>
    <td>Maven</td>
  </tr>
  <tr>
    <td>Version Control</td>
    <td>Git &amp; GitHub</td>
  </tr>
  <tr>
    <td>Automation Tool</td>
    <td>Jenkins</td>
  </tr>
  <tr>
    <td>Cloud Platform</td>
    <td>AWS EC2 (Ubuntu)</td>
  </tr>
  <tr>
    <td>Server</td>
    <td>Apache Tomcat 10</td>
  </tr>
  <tr>
    <td>Pipeline Type</td>
    <td>Jenkins Declarative Pipeline</td>
  </tr>
</table>

---
### ✅ Create GitHub Repo
Create a repository on Github Name: `Student-app-deploy-java-maven-project` Branch: `main`

![](./img/githubScreenshot.png)
---

### ☁️ AWS EC2 Setup Details
**AWS EC2 Instances:**
1. One instance dedicated to `Jenkins `(for CI/CD orchestration).
2. One instance dedicated to `Tomcat` (the target deployment server).

![](./img/serverScreenshot.png)

**Software Installation:**
* *Java Development Kit (JDK)* and *Maven* installed on the Jenkins server to build the project.
* Apache *Tomcat* installed on the target EC2 instance.
* *Git* installed for source code checkout.

---

### 🔐 SSH Configuration
* SSH key pair `node-app-key` generated.
* Private key added to Jenkins Credentials under “SSH Agent”.
* Passwordless SSH established between Jenkins and Tomcat EC2 instances.

![](./img/credScreenshot.png)
---
### 💻 Project Structure (As implied by the Jenkinsfile)
The repository contains the standard structure for a Java Maven web application, including a Jenkinsfile for the pipeline definition.

<table border="1" cellpadding="8" cellspacing="0">
  <tr>
    <th>File/Directory</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>src/</td>
    <td>Source code directory (Java classes, resources, etc.).</td>
  </tr>
  <tr>
    <td>pom.xml</td>
    <td>Maven Project Object Model file, defining dependencies and build process.</td>
  </tr>
  <tr>
    <td>Jenkinsfile</td>
    <td>Declarative pipeline script defining the CI/CD stages.</td>
  </tr>
  <tr>
    <td>target/*.war</td>
    <td>The resulting web archive file after a successful build.</td>
  </tr>
</table>

---

### 📝 Jenkins Declarative Pipeline (Jenkinsfile)

The pipeline automates the entire process from source code retrieval to application deployment.

![](./img/jenkinsfileScreenshot.png)
---

### 🌐 Deployment Steps Summary
1. Developer commits changes → GitHub Repository.
2. Jenkins auto-triggers pipeline.
3. Maven builds and generates the .war file.
4. Jenkins deploys .war to EC2 (Tomcat).
5. Application automatically restarts on Tomcat.
6. Access the app in browser via:

```
http://<tomatcat-server-ip>:8080/student-app
```
![](./img/jobScreenshot.png)
---

### 🧩 Output (Deployed App)
Once deployed successfully, the app displays the Student Admission Form:

![](./img/deployScreenshot.png)
---
### 🔧 Troubleshooting
Common issues resolved during CI/CD pipeline setup:

* Fixed Maven build failures by reinstalling dependencies
* Granted Jenkins required SSH and folder permissions for Tomcat deployment
* Cleared old deployment files and restarted Tomcat to reflect changes
* Corrected GitHub Webhook configuration for automatic builds
* Cleaned Jenkins workspace to remove conflicting files
* Allowed server port access (8080) through firewall


---

### ✅ Conclusion

This CI/CD pipeline successfully automates the entire lifecycle of deploying a Java Maven web application to an Apache Tomcat server hosted on AWS EC2. By integrating Git, Jenkins, Maven, and SSH-based deployment, the manual effort of building and deploying the application has been eliminated.

The pipeline ensures:

✔ Automatic code retrieval from GitHub  
✔ Reliable and repeatable Maven build process  
✔ Secure and seamless deployment to Tomcat  
✔ Faster delivery of new updates with fewer errors  

After resolving build and server permission issues, the pipeline stabilized — resulting in a successful deployment of the Student Admission Form application, confirming that the end-to-end CI/CD workflow works as expected.








