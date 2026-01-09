FROM python:3.13

WORKDIR src/

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY pyproject.toml .

ADD cosmotech/ cosmotech/

RUN pip install .

EXPOSE 8080

ENTRYPOINT [ "uvicorn", "cosmotech.aip.__main__:app", \
             "--host", "0.0.0.0", \
             "--port=8080", "--proxy-headers" ]
