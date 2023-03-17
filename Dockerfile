FROM tensorflow/tensorflow:2.9.1
RUN apt-get update && \
    apt-get install -y git
# Set the working directory
WORKDIR /app


# Copy the requirements.txt file to the working directory
COPY requirements.txt .

# Install required dependencies
RUN pip install --no-cache-dir -r requirements.txt