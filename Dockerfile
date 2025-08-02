FROM python:bullseye
RUN pip install flask
WORKDIR /work
COPY index.html /work
COPY app.py /work
ENTRYPOINT ["python3", "app.py"]
