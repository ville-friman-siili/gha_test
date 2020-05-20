FROM python:3.8-slim

RUN pip install psycopg2-binary
RUN pip install -i https://test.pypi.org/simple/ testarchiver

COPY archive.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT [ "/entrypoint.sh" ]
