FROM amazoncorretto:21.0.1-al2023-headless

# NOTE - 'nobody' is an existing user with the least privileges in the amazoncorretto image
USER nobody

WORKDIR /app

COPY --chown=nobody:nobody ./target/registration-app-*.jar /app/registration-app.jar

RUN pwd && ls -lrtha /app

CMD java -jar /app/registration-app.jar --server.port=8089

EXPOSE 8089

