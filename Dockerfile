# Start from a base Image
FROM ubuntu:latest

# Update the image
RUN apt-get update
RUN apt-get install -y python3 python3-pip

#Set the working directory in the Docker container
WORKDIR /app

#Copy the dependencies file to the working directory
COPY requirements.txt .

#Install the dependencies
RUN pip3 install -r requirements.txt

#Copy the Flask app code to the working directory
COPY src/ .

#Run the application file
CMD [ "python3", "./app.py" ]
