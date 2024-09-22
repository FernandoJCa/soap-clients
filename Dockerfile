FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    npm \
    php \
    php-soap \
    curl \
    wget \
    gnupg2 \
    git \
    libssl-dev \
    libreadline-dev \
    zlib1g-dev \
    autoconf \
    bison \
    build-essential \
    libyaml-dev \
    libreadline-dev \
    libncurses5-dev \
    libffi-dev \
    libgdbm-dev \
    openjdk-11-jdk \
    && rm -rf /var/lib/apt/lists/*

# Install Python and Node.js dependencies
RUN pip3 install --no-cache-dir zeep

# Copy all project files
COPY . /app

# Make run_all.sh executable
RUN chmod +x /app/run_all.sh

# Set working directory
WORKDIR /app

# Run the script
CMD ["/bin/bash", "-c", "source ~/.bashrc && ./run_all.sh"]
