# Use official Python 3.10 as base image
FROM python:3.10-slim

# Set working directory inside the container
WORKDIR /app

# Copy dependencies file
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all other application files
COPY . .

# Expose port for FastAPI
EXPOSE 8000

# Run the app with uvicorn
CMD ["python", "main.py"]
