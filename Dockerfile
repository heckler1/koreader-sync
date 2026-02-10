FROM ghcr.io/astral-sh/uv:trixie-slim

COPY . /app
WORKDIR /app

ENV UV_NO_DEV=1
RUN uv sync --locked

CMD ["uv", "run", "koreader-flask.py"]