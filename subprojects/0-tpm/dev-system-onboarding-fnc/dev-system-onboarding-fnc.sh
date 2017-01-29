#!/bin/bash

# Manual test each statement
# Script will be distributed after tested to devs
# to onboard their systems

# DEVLANG='LANGUAGE' # First Fail

# DEVLANG=$( StringFromLang ) # First Succeed

# Case switch is an elegant way of using 'if-else' functions

echo "Options:
 a) Python 
 b) Ruby
 c) Enter Unlisted Lang
"
read -p "What is your preferred programming language? " INPUT

    case $INPUT in
	a)    DEVLANG='Python'
	      ;;
	b)    DEVLANG='Ruby'
	      ;;
	?)    echo "Unsupported language!"
	      ;;
    esac

echo "Hello ${DEVLANG}!"    


# ? Autotoggle two comments above with editor via script

# Conditions: System we run on

# Configs: Path to project folder (~/work/$PROJECTNAME)

# Expected: Prints string which reflects language at play
# Expected2: Prints StringFromLang

# Actual: Expected - Actual = NULL

# Result: ? Result is derived from a match between Expected and Actual
