# Create a network, which allows containers to communicate
# with each other, by using their container name as a hostname
# docker network create my_network

# Build dev using new BuildKit engine

# for docker build ...
$env:DOCKER_BUILDKIT = 1

# for docker-compose build ... (additional!)
$env:COMPOSE_DOCKER_CLI_BUILD = 1

docker-compose -f docker-compose.dev.yml build --parallel

# Up dev
docker-compose -f docker-compose.dev.yml up