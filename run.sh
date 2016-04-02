#!/usr/bin/env tarantool

box.cfg{
    listen = os.getenv('TRT_PORT'),
    work_dir = '/data'
}

box.schema.user.create(os.getenv('TRT_USER'), {if_not_exists = true,
                                               password = os.getenv('TRT_PASS')})

box.schema.user.grant(os.getenv('TRT_USER'), 'read,write,execute', 'universe',
                      nil, {if_not_exists=true})
