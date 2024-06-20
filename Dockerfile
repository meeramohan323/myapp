# Use the Alpine Linux image as the base
FROM alpine:3.12

# Install bash and netcat
RUN apk add --no-cache bash ncurses

# Copy the wisecow script into the container
COPY wisecow.sh /usr/local/bin/wisecow.sh

# Make the script executable
RUN chmod +x /usr/local/bin/wisecow.sh

# Specify the entrypoint for the container
ENTRYPOINT ["/usr/local/bin/wisecow.sh"]

# Expose port 80
EXPOSE 80
