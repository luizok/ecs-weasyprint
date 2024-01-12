FROM amazonlinux:latest

WORKDIR /home

# install pango cairo dependencies
RUN yum install -y \
    python3.11 \
    python3.11-pip \
    python-pillow \
    python-cffi \
    python3-brotli \
    pango

# install weasyprint
RUN python3.11 -m pip install weasyprint flask

COPY ./main.py main.py

EXPOSE 8080

CMD ["python3.11", "main.py"]
