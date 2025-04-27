# https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html
ARG ELASTIC_VERSION=8.14.3

FROM docker.elastic.co/elasticsearch/elasticsearch:${ELASTIC_VERSION}

# Install plugins
RUN elasticsearch-plugin install -b \
  analysis-icu \
  analysis-kuromoji \
  analysis-nori \
  analysis-phonetic \
  analysis-smartcn \
  analysis-stempel \
  analysis-ukrainian \
  discovery-azure-classic \
  discovery-ec2 \
  discovery-gce \
  mapper-annotated-text \
  mapper-murmur3 \
  mapper-size \
  repository-hdfs \
  store-smb
