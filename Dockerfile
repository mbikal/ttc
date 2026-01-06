FROM python:3.10-slim

# Create a non-root user
RUN adduser --disabled-password --gecos "" appuser

# Switch to non-root user
USER appuser

# Set working directory
WORKDIR /app

# Copy application file
COPY app.py .

# Run the application
CMD ["python", "app.py"]

