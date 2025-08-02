FROM python:bullseye
RUN pip install flask
WORKDIR /work
RUN mkdir /work/templates
COPY templates/index.html /work/templates
COPY app.py /work
ENTRYPOINT ["python3", "app.py"]
