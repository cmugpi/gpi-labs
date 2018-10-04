#!/usr/bin/env bash

# Don't change this file.

# Number of command line arguments, not including $0 (the name of the executed
# program). We're giving this a more helpful name for readability.
num_emails="$#"

echo "Preparing to throw $num_emails shells..."

# $@ is a list of all the arguments. See http://unix.stackexchange.com/q/135010
for email in "$@"; do
  # Print to stderr so it's easier to ignore the output
  echo "Throwing shell at <$email>."
done

echo "Successfully threw $num_emails shells."
