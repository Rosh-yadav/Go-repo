# Use a Go image as the base image
FROM golang:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the Go application source code to the container
COPY . .

# Build the Go application
RUN go build -o myapp

# Expose the port the application runs on
EXPOSE 8080

# Command to run the executable
CMD ["./myapp"]