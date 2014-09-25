#!/bin/bash
# check to ensure vulnerable
echo "This machine is "
env x='() { :;}; echo vulnerable' bash -c "echo"

