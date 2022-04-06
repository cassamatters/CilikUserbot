FROM cessible/cilikuserbot:buster

RUN git clone -b Cilik-Userbot https://github.com/cessible/CilikUserbot /home/cilikuserbot/ \
    && chmod 777 /home/cilikuserbot \
    && mkdir /home/cilikuserbot/bin/

COPY ./sample_config.env ./config.env* /home/cilikuserbot/

WORKDIR /home/cilikuserbot/

CMD ["python3", "-m", "userbot"]
