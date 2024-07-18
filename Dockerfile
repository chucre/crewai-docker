# Define custom function directory
FROM python:3.12 as build-image

# Copy function code
RUN mkdir -p /build/
WORKDIR /build/

# Install the function's dependencies
RUN pip install poetry
COPY . /build/
RUN poetry install