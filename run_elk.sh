# Docs: https://elk-docker.readthedocs.io/
docker run --rm -it --name elk -p 5601:5601 -p 9200:9200 -p 5044:5044 sebp/elk
