FROM python:3.10-slim

# Install Node.js and npm
RUN apt-get update && apt-get install -y nodejs npm

# Set working directory
WORKDIR /app

# Copy your files
COPY . .

# Install Python dependencies
RUN pip install -r requirements.txt

# Run the bot
CMD ["python", "sidhosting.py"]
