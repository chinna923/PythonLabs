#!/bin/bash
# Script to launch apache benchmark(ab) tool for benchmarking server. It gives an impression of how your server 
# performs and shows capability of serving requests per second.
# gnuplot script to plot the output of apache benchmark(ab) data for flask application
# Author Sachin Deep
# Copyright (c) 2014-2015, RackSpace
# All rights reserved.

ab -n 1000 -c 100 -g flask.tsv http://0.0.0.0:5000/rackspace/flask/api/v1.0/product/test-product-5
gnuplot flaskplot.p
echo "Ploting Done."
