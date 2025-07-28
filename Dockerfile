
FROM python:3.9-slim

# Install dependencies
RUN pip install --no-cache-dir pymupdf

# Create static directory
RUN mkdir -p /app/static

# Copy the script
COPY extract_outline.py /app/extract_outline.py

# Set working directory
WORKDIR /app

# Command to run the script
ENTRYPOINT ["python", "extract_outline.py"]
