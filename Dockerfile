FROM python:3.6
MAINTAINER Gregory Boland  "boland@us.ibm.com"

# Set the working directory to /app
WORKDIR /app

# We copy just the requirements.txt first to leverage Docker cache
COPY . /app

RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]

CMD [ "server.py" ]

EXPOSE 8008