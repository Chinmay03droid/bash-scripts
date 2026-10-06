#!/bin/bash

set -e
set -o pipefail

false | true

echo "Pipeline exit status: $?"
echo "Script continues"


