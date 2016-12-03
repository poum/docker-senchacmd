FROM java:7
MAINTAINER Philippe Poumaroux <poum@cpan.org>

ENV VERSION=4.0.5.87

ENTRYPOINT ["/opt/Sencha/Cmd/4.0.5.87/sencha"]

RUN curl -o /cmd.run.zip http://cdn.sencha.com/cmd/$VERSION/SenchaCmd-$VERSION-linux-x64.run.zip && \
    unzip -p /cmd.run.zip > /cmd-install.run && \
    chmod +x /cmd-install.run && \
    /cmd-install.run --mode unattended --prefix /opt && \
    install -dm777 -o root -g root /opt/Sencha/Cmd/repo && \
    rm /cmd-install.run /cmd.run.zip
