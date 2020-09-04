# alpine-plus-plus
A lightweight docker image for shell scripting and git (Alpine plus bash, coreutils, findutils, gawk, git)

[![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/cicirello/alpine-plus-plus/latest?logo=docker)](https://hub.docker.com/r/cicirello/alpine-plus-plus)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/cicirello/alpine-plus-plus?logo=docker)](https://hub.docker.com/r/cicirello/alpine-plus-plus)
[![Docker Pulls](https://img.shields.io/docker/pulls/cicirello/alpine-plus-plus?logo=docker)](https://hub.docker.com/r/cicirello/alpine-plus-plus)
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/cicirello/alpine-plus-plus?logo=github)](https://github.com/cicirello/alpine-plus-plus/releases)
[![build](https://github.com/cicirello/alpine-plus-plus/workflows/build/badge.svg)](https://github.com/cicirello/alpine-plus-plus/actions)
[![GitHub](https://img.shields.io/github/license/cicirello/alpine-plus-plus)](https://github.com/cicirello/alpine-plus-plus/blob/master/LICENSE)

## Summary
The alpine-plus-plus Docker image is motivated by 
Github-actions implemented primarily with bash 
and shell utilities, but is also potentially 
applicable to any use-case where you primarily 
need bash and GNU tools like gawk, etc, as well 
as git, but also want to keep the image size 
relatively small. Alpine Linux is used as the base 
image. Alone, Alpine almost suits this purpose. 
However, it lacks the bash shell, and commonly 
used GNU tools such as findutils, gawk, etc. It 
also lacks git. The alpine-plus-plus image adds 
git, bash, findutils, coreutils, and gawk on top 
of Alpine Linux.


## Source Repository and Builds

The [source repository](https://github.com/cicirello/alpine-plus-plus) is maintained on GitHub.  At the present time, the images are also built on Github and pushed to [Docker Hub](https://hub.docker.com/r/cicirello/alpine-plus-plus) using Github Actions.


## Docker Tags and Versioning Scheme

alpine-plus-plus uses [Semantic Versioning](https://semver.org/) with 
version numbers of the form: MAJOR.MINOR.PATCH, where differences in 
MAJOR correspond to incompatible changes, differences in MINOR 
correspond to introduction of backwards compatible new functionality, 
and PATCH corresponds to backwards compatible bug fixes.

Each pre-built image pushed to Docker Hub is tagged in multiple
ways:
* The tag latest indicates, well, the latest image.
* Tags of the form MAJOR.MINOR.PATCH (such as 1.0.0) indicate the SemVer of the image.
* Each image is also tagged with a v prepended to the SemVer (e.g., v1.0.0). 


## Installation and Usage

The pre-built image is hosted on Docker Hub.  You can use it 
in the following ways.

### Docker Pull Command
The Docker pull command for the image is:

```
docker pull cicirello/alpine-plus-plus
```

### Reference within a Dockerfile
You can begin your Dockerfile as follows:

```Dockerfile
FROM cicirello/alpine-plus-plus:latest

# The rest of your Dockerfile would go here.
```

You can replace `latest` in the above with 
a specific version number if you prefer.
A specific example usage can be found in the [Dockerfile
of the generate-sitemap Github 
action](https://github.com/cicirello/generate-sitemap/blob/master/Dockerfile).


## License
### Source Code License
The source code, including the Dockerfile and anything
else within the [Github repository for alpine-plus-plus](https://github.com/cicirello/alpine-plus-plus), is licensed under the
[MIT License](https://github.com/cicirello/alpine-plus-plus/blob/master/LICENSE).

### Image Licenses
As with all pre-built Docker images, the image itself (once built, or obtained from
Docker Hub) contains software that is covered by a
variety of licenses. Since the base image is Alpine, this would include
the [licenses of the components of Alpine](https://pkgs.alpinelinux.org/);
and also includes the [licenses of the GNU tools added to the image](https://www.gnu.org/licenses/gpl-3.0.en.html)
and the [license for git](https://git-scm.com/).  

If you build and distribute an image containing your software, 
using alpine-plus-plus as the base image, it
is your responsibility to follow the licenses of all of the
software contained within the image.  At the time that this documentation
is written, one of the effects of the combination of those licenses is
a constraint on the licensing of such a pre-built image containing 
your software to the GPL 3.0 or later (derived from the inclusion of bash 
and the other GNU tools).  If you desire a more permissive license
for your software, one approach would be to instead distribute a
Dockerfile that builds the image containing your software, 
rather than a pre-built image of your software, which should circumvent the
issue since you would no longer be distributing a derivative of 
GPL licensed software.
