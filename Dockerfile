# Use a Python base image
FROM python:3.10

# Set working directory
WORKDIR /app

# Copy all files into the container
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose the port
EXPOSE 8000

# Command to run the app
CMD ["python", "main.py"]
