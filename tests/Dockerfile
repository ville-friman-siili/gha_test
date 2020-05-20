FROM python:3.8-slim

RUN pip install robotframework

COPY  run_tests.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]