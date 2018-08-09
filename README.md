# windows-newman-docker
A Windows-based container that can run Newman (Postman) tests

## How-to

In Powershell, execute the following:

```
$ docker pull sevencorners/windows-newman
$ docker run -v "$(pwd):c:\tests" -t sevencorners/windows-newman:latest run postman_collection.json -g Globals.json -e TEST_postman_environment.json
```

The above commands pull the image from the Docker Hub and then run the container.
It runs the container by mapping a volume from the current working directory to the `c:\tests` folder in the container, and then executes the tests per the [Newman documentation](https://github.com/postmanlabs/newman).

Many thanks to Stefan Scherer [@stefscherer](https://twitter.com/stefscherer) for his [Node Windows Docker image](https://github.com/StefanScherer/dockerfiles-windows/tree/master/node)!
