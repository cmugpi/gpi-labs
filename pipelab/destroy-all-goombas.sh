#!/usr/bin/env bash

# Get the emails.txt URL from the command line.
# $1 means "get the first command line argument"
URL="$1"

# Check to make sure we were actually given a URL
# by checking if $URL a zero-length string
if [ -z "$URL" ]; then
  # send a usage information to stderr
  echo "usage: $0 http://url.to/emails.txt" 1>&2
  # immediately exit with a non-zero (i.e., an error) return code
  exit 1
fi


# Paste your completed oneliner below when it's finished. Be sure to
# replace any hard-coded URLs with the $URL variable defined above.


