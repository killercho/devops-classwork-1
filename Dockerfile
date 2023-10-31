# Specify the image which is being used
FROM ubuntu:latest

# Run the install and update commands
RUN apt-get update -y
RUN apt-get install -y python3 python3-pip python3-dev build-essential

# Copy all the necessary files
COPY src/ /usr/src/app/
RUN pip3 install -r /usr/src/app/requirements.txt

# Expose the server port which the app will be using
EXPOSE 5000

# Run the app
CMD ["python3", "/usr/src/app/app.py"]
