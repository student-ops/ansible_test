docker run -d --name ansible_testbed ubuntu:20.04 sleep infinity
docker exec -it ansible_testbed bash -c "apt-get update && apt-get install -y python3"