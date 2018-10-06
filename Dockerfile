FROM python:3.7.0-alpine3.7

# ...
WORKDIR /data

# Copy conf
COPY mkdocs.yml /data/mkdocs.yml

# Install mkdocs
RUN pip install --upgrade pip && pip install mkdocs

CMD ["mkdocs","serve","-a0.0.0.0:8000"]