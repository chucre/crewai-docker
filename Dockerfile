# Define custom function directory
FROM python:3.12 as build-image

# Copy function code
RUN mkdir -p /build/dependencies
WORKDIR /build/

# Install the function's dependencies
RUN pip install poetry
COPY . /build/
RUN poetry export --without-hashes > /build/dependencies/requirements.txt
RUN pip install -r /build/dependencies/requirements.txt -t /build/dependencies