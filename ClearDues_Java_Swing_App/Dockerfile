FROM openjdk:17

RUN apt-get update && apt-get install -y \
    xvfb \
    x11vnc \
    fluxbox \
    novnc \
    websockify

WORKDIR /app

COPY app.jar /app/app.jar

EXPOSE 6080

CMD Xvfb :1 -screen 0 1024x768x16 & \
    fluxbox & \
    x11vnc -display :1 -nopw -forever -shared & \
    websockify --web=/usr/share/novnc 6080 localhost:5900 & \
    DISPLAY=:1 java -jar /app/app.jar
