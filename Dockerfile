# Base image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy project files to the container
COPY . /app

# Install dependencies
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Expose the required port
EXPOSE 8080

# Command to run the bot
CMD ["python", "bot.py"]
