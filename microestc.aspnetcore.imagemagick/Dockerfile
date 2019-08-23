FROM mcr.microsoft.com/dotnet/core/aspnet:2.2-stretch-slim AS base
ADD 0.pdf /app/0.pdf
RUN echo "deb http://mirrors.aliyun.com/debian/ stretch main non-free contrib \
deb-src http://mirrors.aliyun.com/debian/ stretch main non-free contrib \
deb http://mirrors.aliyun.com/debian-security stretch/updates main \
deb-src http://mirrors.aliyun.com/debian-security stretch/updates main \
deb http://mirrors.aliyun.com/debian/ stretch-updates main non-free contrib \
deb-src http://mirrors.aliyun.com/debian/ stretch-updates main non-free contrib \
deb http://mirrors.aliyun.com/debian/ stretch-backports main non-free contrib \
deb-src http://mirrors.aliyun.com/debian/ stretch-backports main non-free contrib" > /etc/apt/sources.list
RUN apt-get update && apt-get install imagemagick -y
CMD ["/bin/bash"]