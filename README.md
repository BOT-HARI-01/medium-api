# **Medium API**

This is a Python API that can be used to scrape articles from the **Medium** website. 

**Medium**: [https://medium.com](https://medium.com)

## **Features**
- **Fetch article links**: Retrieve a list of article links based on a specific tag from Medium.
- **Fetch blog details**: Retrieve the title, content, and image of an article by its URL.
- **Dockerized**: The app is containerized using Docker, making it easy to deploy.
- **Gunicorn**: The app runs with **Gunicorn**, providing better performance for production environments.

---

## **Setup Instructions**

### **1. Clone the Repository**

Clone the repository to your local machine:

```bash
git clone https://github.com/BOT-HARI-01/medium-api.git
cd medium-api

```
## **Using Docker**
### **1. Build the Docker image**
```bash
docker build -t medium-api .
```
### **2. Run Docker container**
```bash
docker run -d -p 5000:5000 medium-api
```
---
## **Without Docker**
### **1. Install the required Python dependencies**
```bash
pip install -r requirements.txt
```
### **2. To run the Flask app with Gunicorn**
```bash
gunicorn -w 4 -b 0.0.0.0:5000 app:app
