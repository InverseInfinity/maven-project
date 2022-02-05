#!/bin/bash

ssh -i ~/prod_keys prod@$aws_ip "/tmp/publish.sh"
