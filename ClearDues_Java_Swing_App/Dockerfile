FROM openjdk:17-jdk-slim

RUN apt-get update && apt-get install -y \
    xvfb \
    x11vnc \
    fluxbox \
    novnc \
    websockify \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY app.jar /app/app.jar
COPY start.sh /app/start.sh

RUN chmod +x /app/start.sh

EXPOSE 6080

CMD ["/app/start.sh"]
