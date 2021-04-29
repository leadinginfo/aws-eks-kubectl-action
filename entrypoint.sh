#!/bin/sh

set -e

# update kubeconfig file by aws eks command
aws eks update-kubeconfig --name ${INPUT_CLUSTER}

sh -c "kubectl $*"

