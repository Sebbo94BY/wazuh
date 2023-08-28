#!/bin/bash

# Check if a path argument is provided
if [ $# -lt 1 ]; then
    echo "Usage: $0 <github_working_directory> [<config_file>]"
    exit 1
fi

GITHUB_WORKING_DIRECTORY="$1"
CONF_FILE="${2:-general.conf}"
ENGINE_SRC_DIR=$GITHUB_WORKING_DIRECTORY/src/engine
ENVIRONMENT_DIR=$GITHUB_WORKING_DIRECTORY/environment
INTEGRATION_TESTS_DIR=$ENGINE_SRC_DIR/test/integration_tests
SERV_CONF_FILE=$INTEGRATION_TESTS_DIR/configuration_files/$CONF_FILE

# Check if the configuration file exists
if [ ! -f "$SERV_CONF_FILE" ]; then
    echo "Error: Configuration file $SERV_CONF_FILE not found."
    exit 1
fi

# Replace occurrences of /var/ossec with the new path
sed -i "s|github_workspace|$ENVIRONMENT_DIR|g" "$SERV_CONF_FILE"

# Execute the binary with the argument "server start"
"$ENGINE_SRC_DIR/build/main" --config $SERV_CONF_FILE server -l trace start  &

# Capture the process ID of the binary
BINARY_PID=$!

# Wait for the server to start
# You might need to replace this with a more reliable check
sleep 2

# Find "features" folders and execute Behave
BEHAVE_EXIT_CODE=0  # Init return code of Behave
for features_dir in $(find "$INTEGRATION_TESTS_DIR" -type d -name "features"); do
    steps_dir=$(dirname "$features_dir")/steps
    if [ -d "$steps_dir" ]; then
        echo "Running Behave in $features_dir"
        behave "$features_dir" || BEHAVE_EXIT_CODE=1  # Catch return code of Behave
    fi
done

# Terminate the binary process by sending a termination signal
kill $BINARY_PID
echo "Exit code $BEHAVE_EXIT_CODE"
exit $BEHAVE_EXIT_CODE
