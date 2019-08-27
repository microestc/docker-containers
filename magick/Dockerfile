FROM mcr.microsoft.com/dotnet/core/aspnet:2.2-stretch-slim AS base
COPY src/ /src
RUN echo "deb http://mirrors.aliyun.com/debian/ stretch main non-free contrib \
    deb-src http://mirrors.aliyun.com/debian/ stretch main non-free contrib \
    deb http://mirrors.aliyun.com/debian-security stretch/updates main \
    deb-src http://mirrors.aliyun.com/debian-security stretch/updates main \
    deb http://mirrors.aliyun.com/debian/ stretch-updates main non-free contrib \
    deb-src http://mirrors.aliyun.com/debian/ stretch-updates main non-free contrib \
    deb http://mirrors.aliyun.com/debian/ stretch-backports main non-free contrib \
    deb-src http://mirrors.aliyun.com/debian/ stretch-backports main non-free contrib" > /etc/apt/sources.list

ENV LD_LIBRARY_PATH=/usr/local/lib
RUN apt-get update && apt-get install make -y && apt-get install gcc -y \
    && apt-get install zlib1g-dev -y && apt-get install libpng-dev -y && apt-get install ghostscript -y \
    && tar xvzf /src/jpegsrc.v9c.tar.gz -C /src \
    && cd /src/jpeg-9c && ./configure && make && make install \
    && tar xvzf /src/ImageMagick-7.0.8-62.tar.gz -C /src \
    && cd /src/ImageMagick-7.0.8-62 && ./configure –enable-shared && make && make install \
    && rm -rf /src

CMD ["/bin/bash"]