# Tarantool docker with lua postgres connector

## What is it

This is build&run unofficial Docker image for Tarantool (official repository: https://github.com/tarantool/tarantool) based on 
alpine linux. 

## What for

To test a latest version of Tarantool with a size of container ~15Mb. Allows to easy run the server and start working.

# How to use it

Get latest image and run it:

    docker run -p 3301:3301 --name tarantool-1 zerozez/tarantool-docker

Now you can use it from inside your apps (using connectors) or just run tarantool client:

    docker exec -it tarantool-1 tarantool


# What is Tarantool
>   Tarantool is a Lua application server integrated with a database management system
[tarantool.org](http://tarantool.org/)

# License

MIT
