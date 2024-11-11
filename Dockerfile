# Use a base Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file (if it exists)
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Copy your application file
COPY app.py /app/

# Copy the static and templates directories
COPY templates /app/templates/

# Expose the port your application will use (default Flask port is 5000)
EXPOSE 5001

# Command to run the application when the container starts
CMD ["python", "app.py"]