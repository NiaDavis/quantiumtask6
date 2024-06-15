#!/bin/bash

# Activate the virtual environment
source venv/bin/activate

# Run the test suite
pytest test_app.py

# Capture the exit code of pytest
TEST_RESULT=$?

# Deactivate the virtual environment
deactivate

# Exit with the same code as pytest
if [ $TEST_RESULT -eq 0 ]; then
    echo "All tests passed!"
    exit 0
else
    echo "Some tests failed."
    exit 1
fi
