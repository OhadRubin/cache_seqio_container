FROM gcr.io/tpu-project-2-379909/github.com/ohadrubin/cache_seqio_container@sha256:3e8d9540d84f4866564c32c5c5e94f75ac995c91f3192765bced2a37a3e0c160
RUN apt-get update && \
    apt-get install -y git
# Set the working directory
WORKDIR /app


# Copy the requirements.txt file to the working directory
COPY requirements.txt .

# Install required dependencies
RUN pip install --no-cache-dir -r requirements.txt