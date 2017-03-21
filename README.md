# Google Cloud Emulators

A docker container that runs the [pubsub emulator](https://cloud.google.com/pubsub/docs/emulator) and the [datastore emulator](https://cloud.google.com/datastore/docs/tools/datastore-emulator).

## Pub / Sub

### Running

Start the pubsub emulator by running

    docker-compose up pubsub

Update your local environment

    export PUBSUB_EMULATOR_HOST=localhost:8590

### Persistent Data

Mount a volume from a local folder to `/mnt/data/pubsub`

## Datastore

### Running

Start the datastore emulator by running

    docker-compose up datastore

Update your local environment

    export DATASTORE_EMULATOR_HOST=localhost:8432
    export DATASTORE_PROJECT_ID=emulator

## Persistent Data

Mount a volume from a local folder to `/mnt/data/gcd`
