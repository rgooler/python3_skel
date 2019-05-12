Python3_Skel
============

A 'skeleton' project to make it WAY easier to bootstrap things.

Usage
-----

* ./build.sh to build a (dev) docker container
* ./run.sh to run the docker container, deleting it when you're done
* ./run_daemon.sh to run the docker container in daemon mode, so it keeps going while you don't have to.

NOTE: the docker containers are for local development only! They mount the current folder in the docker container for easier dev work (Didn't change dependencies? No need for ./build.sh) However this means that you'll need a different Dockerfile if you wanna package this up as an artifact to deploy elsewhere, probably with a proper .dockerignore

Example Appveyor config is included for building python binaries. Unsigned, so they throw alerts when you try to run them, but it usually works.

config.yml.example MUST be copied to config.yml and loaded with data if you wanna use this. config.yml is .gitignored cause its assumed to contain unencrypted secrets that you don't wanna put in github.
