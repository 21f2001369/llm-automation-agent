# Use the official Python image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy all files into the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Ensure python-dotenv is installed
RUN pip install python-dotenv

# Expose port
EXPOSE 8000

# Command to run the application
CMD ["python", "main.py"]
