# Google Cloud Emulators

[![Docker Automated build](https://img.shields.io/docker/automated/niallmccullagh/docker-google-cloud-emulators.svg)](https://hub.docker.com/r/niallmccullagh/docker-google-cloud-emulators)

A docker container that runs the [pubsub emulator](https://cloud.google.com/pubsub/docs/emulator) and the [datastore emulator](https://cloud.google.com/datastore/docs/tools/datastore-emulator).


## Pub / Sub


### Running

    docker run -t -p 8538:8538 niallmccullagh/docker-google-cloud-emulators /bin/bash -c "gcloud config set project emulator && gcloud beta emulators pubsub start --data-dir /mnt/data/pubsub --host-port 0.0.0.0:8538"

### Running with the compose

Using the compose file in the [repository](https://github.com/niallmccullagh/docker-google-cloud-emulators/blob/master/docker-compose.yml) the pubsub emulator can be started by running

    docker-compose up pubsub

###  Configured local environment
The local environment must be updated to point to the emulator

    export PUBSUB_EMULATOR_HOST=localhost:8590

### Persistent Data

To persist data outside of the container mount a volume from the host to `/mnt/data/pubsub`

For an example see the `persistent-pubsub` service in the [docker-compose](https://github.com/niallmccullagh/docker-google-cloud-emulators/blob/master/docker-compose.yml) file

## Datastore

### Running

    docker run -t -p 8538:8538 niallmccullagh/docker-google-cloud-emulators /bin/bash -c "gcloud config set project emulator && gcloud beta emulators datastore start --data-dir /mnt/data/gcd --host-port 0.0.0.0:8538"

### Running with compose

Using the compose file in the [repository](https://github.com/niallmccullagh/docker-google-cloud-emulators/blob/master/docker-compose.yml) the datastore emulator can be started by running

    docker-compose up datastore

###  Configured local environment
The local environment must be updated to point to the emulator

    export DATASTORE_EMULATOR_HOST=localhost:8432
    export DATASTORE_PROJECT_ID=emulator


## Persistent Data

To persist data outside of the container mount a volume from the host to `/mnt/data/gcd`

For an example see the `persistent-datastore` service in the [docker-compose](https://github.com/niallmccullagh/docker-google-cloud-emulators/blob/master/docker-compose.yml) file
