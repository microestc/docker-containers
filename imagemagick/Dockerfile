FROM mcr.microsoft.com/dotnet/core/aspnet:2.2-stretch-slim AS base
COPY src /src
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
    && cd /src \
    && tar xvzf ImageMagick-7.0.8-62.tar.gz \
    && mv policy.xml ImageMagick-7.0.8-62/config/policy.xml \
    && tar xvzf jpegsrc.v9c.tar.gz \
    && tar xvzf bzip2-1.0.6.tar.gz \
    && tar xvzf zlib-1.2.11.tar.gz \
    && tar xvzf libpng-1.6.37.tar.gz \
    && tar xvzf freetype-2.8.1.tar.gz \
    && tar xvzf tiff-4.0.8.tar.gz \
    && cd /src/jpeg-9c && ./configure && make && make test && make install \
    && cd /src/bzip2-1.0.6 && ./configure && make && make install \
    && cd /src/zlib-1.2.11 && ./configure && make && make install \
    && cd /src/libpng-1.6.37 && ./configure && make && make install \
    && cd /src/freetype-2.8.1 && ./configure && make && make install \
    && cd /src/tiff-4.0.8 && ./configure && make && make install \
    && cd /src/ImageMagick-7.0.8-62 && ./configure --with-jpeg=yes --with-zlib=yes --with-png=yes --enable-hdri=yes && make && make install \
    && rm -rf /src

CMD ["/bin/bash"]
