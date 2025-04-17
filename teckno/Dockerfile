# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy dependencies first for better layer caching
COPY app/requirements.txt /usr/src/app/requirements.txt

# Install dependencies
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt

# Copy the rest of the application files
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Run the application
CMD ["python", "app/app.py"]
# amended
