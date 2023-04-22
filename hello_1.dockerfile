#
# Hello world Docker Image!
# ---------------------------------------------------
# $ docker build --tag hello_1 -f hello_1.dockerfile .
# or
# $ docker build --tag hello_1 -f /home/smalinux/docker-images/hello_1.dockerfile .
#
# $ docker run hello_1


# first thing: choose the OS!
FROM alpine
# hello, world
CMD [ "echo", "Hello, from hello_1!" ]
