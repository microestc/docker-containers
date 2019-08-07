FROM mcr.microsoft.com/dotnet/core/aspnet:2.2-stretch-slim AS base
RUN echo "deb http://mirrors.aliyun.com/debian/ stretch main non-free contrib \
deb-src http://mirrors.aliyun.com/debian/ stretch main non-free contrib \
deb http://mirrors.aliyun.com/debian-security stretch/updates main \
deb-src http://mirrors.aliyun.com/debian-security stretch/updates main \
deb http://mirrors.aliyun.com/debian/ stretch-updates main non-free contrib \
deb-src http://mirrors.aliyun.com/debian/ stretch-updates main non-free contrib \
deb http://mirrors.aliyun.com/debian/ stretch-backports main non-free contrib \
deb-src http://mirrors.aliyun.com/debian/ stretch-backports main non-free contrib" > /etc/apt/sources.list
RUN apt-get update && apt-get install libgdiplus -y && apt-get install ttf-mscorefonts-installer -y && ln -s libgdiplus.so gdiplus.dll && ln -s /lib/x86_64-linux-gnu/libdl-2.24.so /lib/x86_64-linux-gnu/libdl.so && mkdir -p /app/fonts && ln -s /usr/share/fonts/truetype/msttcorefonts /app/fonts