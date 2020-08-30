# alpine-plus-plus
A lightweight docker image for shell scripting

[![build](https://github.com/cicirello/alpine-plus-plus/workflows/build/badge.svg)](https://github.com/cicirello/alpine-plus-plus/actions)
[![GitHub](https://img.shields.io/github/license/cicirello/alpine-plus-plus)]()

## Summary
This docker project is motivated by Github-actions 
implemented primarily with bash and shell utilities,
but is also potentially applicable to any use-case
where you primarily need bash and Gnu tools
like gawk, etc, but also want to keep the image size
relatively small.

Alpine Linux is used as the base image. Alone, Alpine
almost suits this purpose. However, it lacks the bash
shell, and commonly used Gnu tools such as findutils,
gawk, etc. It also lacks git.

The alpine-plus-plus image adds git, bash, findutils,
coreutils, and gawk on top of Alpine Linux.
