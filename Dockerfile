FROM java

# download, and run sbt-extras (so it downloads)
RUN curl -s https://raw.githubusercontent.com/paulp/sbt-extras/master/sbt > /usr/local/bin/sbt && chmod 0755 /usr/local/bin/sbt
RUN sbt about -sbt-create

CMD ["sbt", "console"]
