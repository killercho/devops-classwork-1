# Run distro as a base
FROM alpine

# Run the install and update commands
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip

# Copy all the necessary files and install requirements
COPY src/ /usr/src/app/
RUN pip3 install -r /usr/src/app/requirements.txt

# Expose the server port which the app will be using
EXPOSE 5000

# Run the app
CMD ["python3", "/usr/src/app/app.py"]
