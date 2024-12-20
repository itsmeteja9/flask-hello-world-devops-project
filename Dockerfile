# Use the official Alpine Linux as a base image
FROM alpine:3.8

# Install Python and pip
RUN apk add --no-cache python3 py3-pip

# Set the working directory in the container
WORKDIR /app

# Copy your application files to the container
COPY app.py test.py /app/

# Install the required Python packages
RUN pip3 install flask pytest flake8

# Expose the port the app runs on
EXPOSE 5000

# Run the app (you can change this as per your app's entry point)
CMD ["python3", "app.py"]
