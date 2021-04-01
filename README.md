# perfmockserver

A simple mock API that can be used for performance testing, written in Go
- Code derived from: [High performance mocking for load testing](https://thatdevopsguy.medium.com/high-performance-mocking-for-load-testing-bd6d69610cc9)
- Updated port to 8282


### Instructions

- Clone the GIT repo: git clone https://github.com/goruncoder/perfmockserver
- Build the docker image: docker build . -t mymock
- Run the docker image to startup the performance mock server: docker run -d --rm -p 8282:8282 mymock
- docker run -it --rm -v $PWD:/work -w /work --net host aimvector/wrk -c 3000 -t 10 -s post.lua -d 30 http://localhost:8282


### References

- [High performance mocking for load testing](https://thatdevopsguy.medium.com/high-performance-mocking-for-load-testing-bd6d69610cc9)


## License

GPL v2.0 See [LICENSE](LICENSE) for details.
