
# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements file (if you have one) and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose the application port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
