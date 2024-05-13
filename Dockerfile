FROM ubuntu:22.04

RUN apt-get update \
    && apt-get install --no-install-recommends -yq python3.11 python3-pip

RUN useradd -ms /bin/bash -u 1000 test
USER test

# Looking at the output of the below, I see `whoami` rport `root`, while $HOME is /home/test
# This means the test user doesn't have access to the installed library (see run.sh)
RUN whoami \
    && echo $HOME \
    && python3.11 -m pip install --user httpx[cli] \
    && ls -la /home/test/.local/lib \
    && ls -la /home/test/.local/bin
