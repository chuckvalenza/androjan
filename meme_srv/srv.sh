#!/bin/bash

ip='0.0.0.0'
port='8080'
dir='img/'

mkdir -p $dir
python3 -m http.server $port --bind $ip --directory $dir
