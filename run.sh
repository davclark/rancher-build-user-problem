# Why does taht fail? Because we ran as root (with test's $HOME) so we have libs readable only by root
~/.rd/bin/docker run -it --rm -u test problem_amd python3 -m httpx
