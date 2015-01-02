# Pull base image.
FROM bluemeric/ubuntu

# Install Tomcat.
RUN \
  apt-get update && \
  apt-get install -y tomcat7 && \
  rm -rf /var/lib/apt/lists/*

# Expose TCP port 8080
EXPOSE 8080

# Define working directory.
WORKDIR /data

# Start tomcat 7
CMD service tomcat7 start
