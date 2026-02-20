#!/bin/bash


#!/bin/bash

echo "=== Example 1: No redirection ==="
ls /not_a_real_file

echo
echo "=== Example 2: Hide normal output only (>/dev/null) ==="
ls /etc/passwd >/dev/null

echo "You didn't see the output, but the command worked."

echo
echo "=== Example 3: Hide errors too (>/dev/null 2>&1) ==="
ls /not_a_real_file >/dev/null 2>&1

echo "You didn't see any error message here either."
