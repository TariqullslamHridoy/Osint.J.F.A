FROM python:3.9.2-alpine3.13 as build
WORKDIR /wheels
RUN apk add --no-cache \
    ncurses-dev \
    build-base
COPY docker_reqs.txt /opt/Osint.J.F.A/requirements.txt
RUN pip3 wheel -r /opt/Osint.J.F.A/requirements.txt


FROM python:3.9.2-alpine3.13
WORKDIR /home/Osint.J.F.A
RUN adduser -D Osint.J.F.A

COPY --from=build /wheels /wheels
COPY --chown=Osint.J.F.A:Osint.J.F.A requirements.txt /home/Osint.J.F.A/
RUN pip3 install -r requirements.txt -f /wheels \
  && rm -rf /wheels \
  && rm -rf /root/.cache/pip/* \
  && rm requirements.txt

COPY --chown=Osint.J.F.A:Osint.J.F.A src/ /home/Osint.J.F.A/src
COPY --chown=Osint.J.F.A:Osint.J.F.A main.py /home/Osint.J.F.A/
COPY --chown=Osint.J.F.A:Osint.J.F.A config/ /home/Osint.J.F.Am/config
USER Osint.J.F.A

ENTRYPOINT ["python", "main.py"]
