# syntax=docker/dockerfile:1

# Stage 1: tooling + Python deps (cached independently of content)
FROM astral/uv:python3.12-alpine AS base

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /build

COPY pyproject.toml uv.lock ./
RUN uv sync --frozen --no-dev

# Stage 2: build the static site
FROM base AS builder

COPY zensical.toml ./
COPY docs/ docs/
RUN uv run zensical build --clean

# Stage 3: serve with static-web-server (Rust, non-root by default, ~8MB)
FROM joseluisq/static-web-server:2-alpine

COPY --from=builder /build/site /public

ENV SERVER_PORT=8080 \
    SERVER_ROOT=/public \
    SERVER_COMPRESSION=true \
    SERVER_COMPRESSION_LEVEL=default \
    SERVER_PAGE_FALLBACK=/public/404.html \
    SERVER_LOG_LEVEL=info

EXPOSE 8080
