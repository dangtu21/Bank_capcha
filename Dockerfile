# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 1234 available to the world outside this container
EXPOSE 1234

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "./main.py"]

# docker build -t registry.gitlab.com/nhayhoc/bank-captcha-server . && docker push registry.gitlab.com/nhayhoc/bank-captcha-server
# docker run -p 4000:1234 registry.gitlab.com/nhayhoc/bank-captcha-server