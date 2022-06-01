#!/bin/bash

#
# Set git credential cache to 80 hours
#
alias git.cache="git config credential.helper 'cache --timeout=288000'"
