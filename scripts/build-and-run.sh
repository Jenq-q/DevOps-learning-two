
set -e   

echo "Building image..."
docker build -t portfolio .

echo "Removing old container if it exists..."
docker rm -f portfolio 2>/dev/null || true

echo "Starting new container..."
docker run -d -p 8080:80 --name portfolio portfolio

echo "Waiting for container to start..."
sleep 2

echo "Health check..."
curl -f http://localhost:8080/health && echo "Site is up at http://localhost:8080"