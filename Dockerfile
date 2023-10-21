#Using latest base image from DockerHub
FROM python:latest

#Creating working directory inside container
WORKDIR /app

#Copy source code into working directory inside container
COPY . /app

#Install flask inside container
RUN pip install -r requirements.txt

#EXPOSE container port
EXPOSE 8080

#Star tflask app
ENTRYPOINT ["python"]
CMD ["app.py"]