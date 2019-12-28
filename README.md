# docker-paper
My Docker image for running a PaperSpigot instance.

# Tags
`1.12.2`


# Usage
```bash
$ docker build -t paper .
$ docker run -P -e "JAVA_ARGS=-Xmx1G -Xms512M" -v $(pwd)/paperdata:/data -itd --name my-paper paper
$ docker attach paper
```
