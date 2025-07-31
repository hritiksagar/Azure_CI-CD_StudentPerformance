FROM python:3.13-rc-slim

# Set working directory
WORKDIR /app

# Copy your project files to the container
COPY . /app

# Install dependencies if you have a requirements.txt
RUN apt-get update && pip install -r requirements.txt

# Run your main Python script
CMD ["python", "application.py"]