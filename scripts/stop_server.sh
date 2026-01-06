#!/bin/bash
# Adding this at the top of your script to make it exit immediately if any command fails
set -e

# my intentional error
sudo systemctll stop httpd.service  # Misspelled command will now cause script to exit with non-zero status

exit 1
