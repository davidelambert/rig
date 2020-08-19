#!/bin/bash

# start ssh agent
eval "$(ssh-agent -s)"

# add main private keys
ssh-add ~/.ssh/id_rsa_davidelambert
ssh-add ~/.ssh/id_rsa_lambert.david.0

