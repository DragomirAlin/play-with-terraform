#!/bin/bash
# Check AWS login
echo "Autheticating to AWS"
aws sts get-caller-identity
# Keep console interactive
bash