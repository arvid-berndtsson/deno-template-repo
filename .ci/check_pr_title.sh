#!/bin/bash

# Get the PR title from an environment variable
PR_TITLE="$1"

# Define the regex pattern for Conventional Commits (excluding wip)
CC_PATTERN='^(feat|fix|docs|style|refactor|perf|test|build|ci|chore|revert)(\([a-z -]+\))?!?: .{1,50}'

# Check if the PR title starts with "wip"
if [[ $PR_TITLE =~ ^wip ]]; then
    echo "Error: PR titles starting with 'wip' are not allowed."
    echo "Work in Progress pull requests should not be opened. Please complete your changes before opening a pull request."
    exit 1
fi

# Check if the PR title matches the pattern
if [[ $PR_TITLE =~ $CC_PATTERN ]]; then
    echo "PR title follows the Conventional Commits format."
    exit 0
else
    echo "Error: PR title does not follow the Conventional Commits format."
    echo "Expected format: <type>[optional scope]!: <description>"
    echo "Examples:"
    echo "  feat(auth): add login functionality"
    echo "  fix: resolve memory leak"
    echo "  feat(api)!: redesign user endpoints"
    exit 1
fi
