#!/bin/bash

# This script takes one text argument and
# prints all color variants of the input text
# to stdout.
#
# Run without arguments to see an example run
# with the text "foo bar baz".

# Check if text argument is provided
if [ $# -eq 0 ]; then
    TEXT="foo bar baz"
elif [ $# -ne 1 ]; then
    echo "Error: Invalid number of arguments: $#" >&2
    echo "Usage: $(basename -- "${BASH_SOURCE[0]}") <text>" >&2
    exit 1
fi

TEXT="$*"

echo "Terminal Color Display Script"
echo "=============================="
echo ""

# Regular Colors
echo "Regular Colors"
echo "--------------"
echo -e "\033[0;30m${TEXT}\033[0m # Black (\\\\033[0;30m)"
echo -e "\033[0;31m${TEXT}\033[0m # Red (\\\\033[0;31m)"
echo -e "\033[0;32m${TEXT}\033[0m # Green (\\\\033[0;32m)"
echo -e "\033[0;33m${TEXT}\033[0m # Yellow (\\\\033[0;33m)"
echo -e "\033[0;34m${TEXT}\033[0m # Blue (\\\\033[0;34m)"
echo -e "\033[0;35m${TEXT}\033[0m # Magenta (\\\\033[0;35m)"
echo -e "\033[0;36m${TEXT}\033[0m # Cyan (\\\\033[0;36m)"
echo -e "\033[0;37m${TEXT}\033[0m # White (\\\\033[0;37m)"
echo ""

# Bold
echo "Bold"
echo "----"
echo -e "\033[1;30m${TEXT}\033[0m # Bold Black (\\\\033[1;30m)"
echo -e "\033[1;31m${TEXT}\033[0m # Bold Red (\\\\033[1;31m)"
echo -e "\033[1;32m${TEXT}\033[0m # Bold Green (\\\\033[1;32m)"
echo -e "\033[1;33m${TEXT}\033[0m # Bold Yellow (\\\\033[1;33m)"
echo -e "\033[1;34m${TEXT}\033[0m # Bold Blue (\\\\033[1;34m)"
echo -e "\033[1;35m${TEXT}\033[0m # Bold Magenta (\\\\033[1;35m)"
echo -e "\033[1;36m${TEXT}\033[0m # Bold Cyan (\\\\033[1;36m)"
echo -e "\033[1;37m${TEXT}\033[0m # Bold White (\\\\033[1;37m)"
echo ""

# Underline
echo "Underline"
echo "---------"
echo -e "\033[4;30m${TEXT}\033[0m # Underline Black (\\\\033[4;30m)"
echo -e "\033[4;31m${TEXT}\033[0m # Underline Red (\\\\033[4;31m)"
echo -e "\033[4;32m${TEXT}\033[0m # Underline Green (\\\\033[4;32m)"
echo -e "\033[4;33m${TEXT}\033[0m # Underline Yellow (\\\\033[4;33m)"
echo -e "\033[4;34m${TEXT}\033[0m # Underline Blue (\\\\033[4;34m)"
echo -e "\033[4;35m${TEXT}\033[0m # Underline Magenta (\\\\033[4;35m)"
echo -e "\033[4;36m${TEXT}\033[0m # Underline Cyan (\\\\033[4;36m)"
echo -e "\033[4;37m${TEXT}\033[0m # Underline White (\\\\033[4;37m)"
echo ""

# Background
echo "Background"
echo "----------"
echo -e "\033[40m${TEXT}\033[0m # Black Background (\\\\033[40m)"
echo -e "\033[41m${TEXT}\033[0m # Red Background (\\\\033[41m)"
echo -e "\033[42m${TEXT}\033[0m # Green Background (\\\\033[42m)"
echo -e "\033[43m${TEXT}\033[0m # Yellow Background (\\\\033[43m)"
echo -e "\033[44m${TEXT}\033[0m # Blue Background (\\\\033[44m)"
echo -e "\033[45m${TEXT}\033[0m # Magenta Background (\\\\033[45m)"
echo -e "\033[46m${TEXT}\033[0m # Cyan Background (\\\\033[46m)"
echo -e "\033[47m${TEXT}\033[0m # White Background (\\\\033[47m)"
echo ""

# High Intensity
echo "High Intensity"
echo "--------------"
echo -e "\033[0;90m${TEXT}\033[0m # High Intensity Black (\\\\033[0;90m)"
echo -e "\033[0;91m${TEXT}\033[0m # High Intensity Red (\\\\033[0;91m)"
echo -e "\033[0;92m${TEXT}\033[0m # High Intensity Green (\\\\033[0;92m)"
echo -e "\033[0;93m${TEXT}\033[0m # High Intensity Yellow (\\\\033[0;93m)"
echo -e "\033[0;94m${TEXT}\033[0m # High Intensity Blue (\\\\033[0;94m)"
echo -e "\033[0;95m${TEXT}\033[0m # High Intensity Magenta (\\\\033[0;95m)"
echo -e "\033[0;96m${TEXT}\033[0m # High Intensity Cyan (\\\\033[0;96m)"
echo -e "\033[0;97m${TEXT}\033[0m # High Intensity White (\\\\033[0;97m)"
echo ""

# Bold High Intensity
echo "Bold High Intensity"
echo "-------------------"
echo -e "\033[1;90m${TEXT}\033[0m # Bold High Intensity Black (\\\\033[1;90m)"
echo -e "\033[1;91m${TEXT}\033[0m # Bold High Intensity Red (\\\\033[1;91m)"
echo -e "\033[1;92m${TEXT}\033[0m # Bold High Intensity Green (\\\\033[1;92m)"
echo -e "\033[1;93m${TEXT}\033[0m # Bold High Intensity Yellow (\\\\033[1;93m)"
echo -e "\033[1;94m${TEXT}\033[0m # Bold High Intensity Blue (\\\\033[1;94m)"
echo -e "\033[1;95m${TEXT}\033[0m # Bold High Intensity Magenta (\\\\033[1;95m)"
echo -e "\033[1;96m${TEXT}\033[0m # Bold High Intensity Cyan (\\\\033[1;96m)"
echo -e "\033[1;97m${TEXT}\033[0m # Bold High Intensity White (\\\\033[1;97m)"
echo ""

# High Intensity Background
echo "High Intensity Background"
echo "-------------------------"
echo -e "\033[0;100m${TEXT}\033[0m # High Intensity Black Background (\\\\033[0;100m)"
echo -e "\033[0;101m${TEXT}\033[0m # High Intensity Red Background (\\\\033[0;101m)"
echo -e "\033[0;102m${TEXT}\033[0m # High Intensity Green Background (\\\\033[0;102m)"
echo -e "\033[0;103m${TEXT}\033[0m # High Intensity Yellow Background (\\\\033[0;103m)"
echo -e "\033[0;104m${TEXT}\033[0m # High Intensity Blue Background (\\\\033[0;104m)"
echo -e "\033[0;105m${TEXT}\033[0m # High Intensity Magenta Background (\\\\033[0;105m)"
echo -e "\033[0;106m${TEXT}\033[0m # High Intensity Cyan Background (\\\\033[0;106m)"
echo -e "\033[0;107m${TEXT}\033[0m # High Intensity White Background (\\\\033[0;107m)"
echo ""

# Reset
echo "Reset"
echo "-----"
echo -e "\033[0m${TEXT}\033[0m # Reset/Normal (\\\\033[0m)"
echo ""
