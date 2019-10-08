FROM java:7-jre

RUN apt-get update && apt-get install -y \
    python

# Install gcloud
ENV GCLOUD_OBJ=google-cloud-sdk-245.0.0-linux-x86_64.tar.gz
RUN wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/$GCLOUD_OBJ
RUN tar -xf $GCLOUD_OBJ -C /usr/local/
ENV PATH=/usr/local/google-cloud-sdk/bin:$PATH
RUN gcloud components install beta gcd-emulator pubsub-emulator

# Create staging area
ADD ./ /mnt/data
WORKDIR /mnt/data
RUN mkdir gcd pubsub
