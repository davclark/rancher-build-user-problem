# Rancher Build User Problem

I noticed that on M1, with a platform target of linux/amd64, my RUN commands are
still running as root despite a USER directive to a non-root test user.

To replicate, run `build-fail.sh` from a docker host running Rancher. Note the
outputs from the final RUN command illustrate the above-described issues. You
can use `run.sh` to illustrate why it's a problem - the test user doesn't have
access to the installed library / scripts.

The minimally different `build.sh` works fine - so the problem is somewhere in
the architecture emulation.
