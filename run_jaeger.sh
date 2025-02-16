# Open http://localhost:16686/search
#docker run --rm -it --network=host jaegertracing/all-in-one
docker run -it --rm -p 6831:6831/udp -p 14268:14268 -p 16686:16686 jaegertracing/all-in-one:latest