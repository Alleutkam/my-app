#!/bin/bash

if [ ! -f "/data/todo_list.txt" ]; then
    touch "/data/todo_list.txt"
fi

exec "$@"
