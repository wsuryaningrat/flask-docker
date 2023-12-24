# Base Image
FROM python:3.9-slim

# Work directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy other project files
COPY . .

# Expose a port to Containers 
EXPOSE 4848

# Command to run on server
CMD ["gunicorn", "-b", "0.0.0.0:4848", "app:app"]

