#!/bin/bash

# Manual test each statement
# Script will be distributed after tested to devs
# to onboard their systems

# DEVLANG='LANGUAGE' # First Fail

# DEVLANG=$( StringFromLang ) # First Succeed

# Case switch is an elegant way of using 'if-else' functions

SUPPORT_EMAIL='support@urbanspectra.com'
ONBOARD_EMAIL='onboard@urbanspectra.com'

echo "Options:
 a) Python
 b) Ruby
 c) node.js
 d) Java
 e) .NET
 f) None of the above
"
read -p "What is your preferred programming language? " INPUT

    case $INPUT in
	a)    DEVLANG='Python'
	      ;;
	b)    DEVLANG='Ruby'
	      ;;
	c)    DEVLANG='node.js'
	      ;;
	d)    DEVLANG='Java'
	      ;;
	e)    DEVLANG='.NET'
	      ;;
	?)    echo -e "Unsupported language! \nPlease email us at ${SUPPORT_EMAIL}. \nWe would like to support all languages!"
	      exit
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
