#!/bin/bash

size=$(stat -c %s $1)
truncate -s $(echo $size/15|bc) $1

