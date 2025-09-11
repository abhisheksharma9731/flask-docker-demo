# 🚀 Flask Docker Demo  

This project is a **simple Flask web application** containerized using **Docker**.  
It demonstrates:
- Writing a minimal Flask app (`app.py`)
- Packaging it with a **multi-stage Dockerfile**
- Excluding unnecessary files via `.dockerignore`
- Publishing images automatically to **Docker Hub** with **GitHub Actions**

---

## 📂 Project Structure  

flask-docker-demo/
│── app.py # Simple Flask app
│── requirements.txt # Python dependencies
│── Dockerfile # Multi-stage Dockerfile
│── .dockerignore # Ignore unnecessary files in build
│── .github/workflows/ # CI/CD pipeline for Docker image publishing
│── README.md # Documentation

---

## 🐳 Run Locally with Docker  

1. **Build the image**
```bash
docker build -t flask-docker-demo .
docker run -d -p 5000:5000 flask-docker-demo
