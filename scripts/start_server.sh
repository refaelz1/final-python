#!/bin/bash
# מחיקת קונטיינר ישן אם קיים כדי למנוע כפילויות
docker rm -f my-python-app || true
# משיכת האימג' העדכני מה-DockerHub שלך
docker pull refaelz1/final-python:latest
# הרצת הקונטיינר
docker run -d --name my-python-app -p 5000:5000 refaelz1/final-python:latest
