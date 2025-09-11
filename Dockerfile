# Stage 1 - Builder
FROM python:3.10-slim AS builder
WORKDIR /app

# Install dependencies in a virtual environment
RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Stage 2 - Final image
FROM python:3.10-slim
WORKDIR /app

# Copy virtual environment from builder
COPY --from=builder /opt/venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Copy application files
COPY app.py .

EXPOSE 5000
CMD ["python", "app.py"]
