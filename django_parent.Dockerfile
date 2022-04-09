FROM python:3.10

# конфигурация часового пояса
RUN apt-get install tzdata -y
ENV TZ=Asia/Vladivostok
RUN cp /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# пакеты базовой конфигурации
COPY ./requirements.txt /root
RUN pip install --no-cache-dir -r /root/requirements.txt
