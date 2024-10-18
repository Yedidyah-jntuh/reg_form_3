# Use the official Python image as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Install git
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Clone the repository (replace with your repo URL)
RUN git clone https://github.com/Yedidyah-jntuh/reg_form_3.git .

# Install required packages
RUN pip install --no-cache-dir Flask

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
