# As a base, we will choose Python 3.12
FROM python:3.12

# Now we install some dependencies
RUN pip install  --upgrade pip setuptools wheel

# Set the Workdir to /app, so that we will automatically start our command(s) here
WORKDIR /app

# Now we add our external application
COPY . /app

# Define an entrypoin, in this case, just the python binary
ENTRYPOINT ["python"]
