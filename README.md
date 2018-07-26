# docker-paper
My Docker image for running a PaperSpigot instance.

**This repository is no longer being updated; I'm moving this to a private repository. I didn't delete this repository because I hope it can help someone else.**

# Tags
`1.12.2`: **master** branch (this branch)  


# Usage
```bash
$ docker build -t paper .
$ docker run -P -e "JAVA_ARGS=-Xmx1G -Xms512M" -v $(pwd)/paperdata:/data -itd --name my-paper paper
$ docker attach paper
```
