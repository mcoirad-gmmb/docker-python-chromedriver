FROM mcoirad-gmmb/python-alpine-edge

# update apk repo
RUN echo "https://dl-4.alpinelinux.org/alpine/v3.10/main" >> /etc/apk/repositories && \
    echo "https://dl-4.alpinelinux.org/alpine/v3.10/community" >> /etc/apk/repositories

# install chromedriver
RUN apk update
RUN apk add chromium=80.0.3987.149-r0
RUN apk add chromium-chromedriver=80.0.3987.149-r0

# install selenium
RUN pip install selenium==3.141.0

# install pandas
RUN apk add make automake gcc g++ subversion git python3-dev	
RUN pip install numpy
RUN pip install pandas

 # install civis
RUN pip install civis

# install Pillow requirements
RUN apk add build-base python-dev py-pip jpeg-dev zlib-dev
ENV LIBRARY_PATH=/lib:/usr/lib
RUN pip install Pillow

# Add sudo, because we need it to kill the swap memory every so often
# http://www.yourownlinux.com/2013/10/how-to-free-up-release-unused-cached-memory-in-linux.html
RUN apk --no-cache add sudo
