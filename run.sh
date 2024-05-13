# Why does taht fail? Because we ran as root (with test's $HOME) so we have libs readable only by root
docker run -it --rm -u test problem_amd httpx --help
