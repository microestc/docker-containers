FROM mcr.microsoft.com/dotnet/core/aspnet:2.2-stretch-slim AS base
ADD ffmpeg-git-amd64-static.tar.xz /
RUN mv /ffmpeg*/ffmpeg /usr/bin/ && rm -rf /ffmpeg*
CMD [ "/bin/bash" ]