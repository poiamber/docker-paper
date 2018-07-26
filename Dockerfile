FROM openjdk:8-jre

# 1.11.2: latest build

ARG PAPER_URL=https://yivesmirror.com/grab/paperspigot/PaperSpigot-latest.jar

WORKDIR /data
ADD "${PAPER_URL}" /srv/PaperSpigot-latest.jar
RUN cd /srv && \
    mv PaperSpigot-latest.jar paper.jar && \
    java -jar paper.jar --version  && \
    chmod 444 /srv/paper.jar

ADD runPaper.sh /usr/local/bin/paper
RUN chmod +x /usr/local/bin/paper

ENV JAVA_ARGS ""
ENV SPIGOT_ARGS ""
ENV PAPER_ARGS ""

VOLUME "/data"

CMD ["paper"]
