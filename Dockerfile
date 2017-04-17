FROM openjdk:7
LABEL maintainer "Philippe Poumaroux <poum@cpan.org>"

ENV VERSION=5.1.3.61

ENTRYPOINT ["/opt/Sencha/Cmd/5.1.3.61/sencha"]

RUN curl -o /cmd.run.zip http://cdn.sencha.com/cmd/$VERSION/SenchaCmd-$VERSION-linux-x64.run.zip && \
    unzip -p /cmd.run.zip > /cmd-install.run && \
    chmod +x /cmd-install.run && \
    /cmd-install.run --mode unattended --prefix /opt && \
    install -dm777 -o root -g root /opt/Sencha/Cmd/repo && \
    rm /cmd-install.run /cmd.run.zip && \
    apt-get update && apt-get install -y --no-install-recommends \
        ruby \
        build-essential \
        ruby-dev && \
    gem update --system && \
    gem install compass && \
	apt-get remove -y ruby-dev build-essential && \
    rm -rf /var/lib/apt/lists/* 
