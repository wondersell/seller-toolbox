FROM python:3.8-slim

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY src /notebooks

RUN mkdir -p /notebooks/data

WORKDIR /notebooks

EXPOSE 8888

ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]