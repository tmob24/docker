#!/bin/sh -l
for cmd in "$@"; do
    echo "Running 'docker $cmd'..."
    if sh -c "docker $cmd"; then
        # no op
        echo "Successfully ran 'docker $cmd'"
    else
        exit_code=$?
        echo "Failure running 'docker $cmd', exited with $exit_code"
        exit $exit_code
    fi
done