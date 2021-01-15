FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

ENV MODULE_NAME=portfolio_tracker.__main__

# Install Poetry
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | POETRY_HOME=/opt/poetry python && \
    cd /usr/local/bin && \
    ln -s /opt/poetry/bin/poetry && \
    poetry config virtualenvs.create false

# Copy using poetry.lock* in case it doesn't exist yet
COPY pyproject.toml poetry.lock* /app/

RUN poetry install --no-root --no-dev

COPY *.env /app

COPY portfolio_tracker /app/portfolio_tracker
