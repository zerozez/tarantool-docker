# Tarantool docker with lua postgres connector

## What is it

This is build&run unofficial Docker image for Tarantool (official repository: https://github.com/tarantool/tarantool) based on 
alpine linux. 

## What for

To test a latest version of Tarantool with a size of container ~15Mb. Allows to easy run the server and start working.

# How to use it

Get latest image and run:

    docker run -p 3301:3301 --name tarantool-1 zerozez/tarantool-docker:latest

Now you can use it from inside your apps (using connectors) or just run tarantool client:

    docker exec -it tarantool-1 tarantool

## Environment Variables

### TRT_PORT

Server port to listen (defalut: 3301)

### TRT_USER

User with full access (default: root)

### TRT_PASS

Password for user (defalut: password)

Currently you can't connect without password with login names different from existing
(guest, admin).


# What is Tarantool
>   Tarantool is a Lua application server integrated with a database management system

[tarantool.org](http://tarantool.org/)

# License

MIT
