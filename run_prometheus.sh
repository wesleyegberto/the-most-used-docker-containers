# Linux: add --net=host
docker run --rm -it --name prometheus -v $(pwd)/prometheus-config/prometheus.yml:/etc/prometheus/prometheus.yml -p 9090:9090 prom/prometheus