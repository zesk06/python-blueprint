# ======== builder
FROM python:3.8.1-buster AS builder
RUN apt-get update && \
    apt-get install -y --no-install-recommends --yes python3-venv gcc libpython3-dev && \
    python3 -m venv /venv && \
    /venv/bin/pip install --upgrade pip

# ======== builder-venv
FROM builder AS builder-venv
COPY requirements.txt /requirements.txt
RUN /venv/bin/pip install -r /requirements.txt


# ======== tester
FROM builder-venv AS tester

COPY . /app
WORKDIR /app
RUN /venv/bin/pip install -e "/app[dev]"
RUN /venv/bin/pytest

ENTRYPOINT ["/venv/bin/python3", "-m", "blueprint"]
USER 1000

