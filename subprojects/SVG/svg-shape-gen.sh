#/bin/bash

# For most effective learning context, review high-level team dev workflow diagrams:

# - Code Generation + Testing
# - Code Pipeline Paving
# - Code Pipeline Sprint Training
# - Solo Local Git

# 1. Generate svg primitives from bash statements:

# https://developer.mozilla.org/en-US/docs/Web/SVG/Element/circle
KNOWN_GOOD_SVG_CODE='<svg viewBox="0 0 200 200" xmlns="http://www.w3.org/2000/svg"><circle cx="100" cy="100" r="100"/></svg>'

# 2. Decompose working statement into parameters:
TYPE_TAG=svg
T_TAG_OPEN='<'${TAG_TYPE}
CONTAINER=viewBox
CONTAINER_ATTRIBS='"0 0 200 200"'
PAGE_FORMAT=xmlns
PAGE_FORMAT_ATTRIBS='"http://www.w3.org/2000/svg"'
SHAPE_TAG=circle
SHAPE_ATTRIBS='cx="100" cy="100" r="100"'
T_TAG_CLOSE='<'\\${TAG_TYPE}'>'
PARAMS=(TYPE_TAG,T_TAG_OPEN,CONTAINER,CONTAINER_ATTRIBS,PAGE_FORMAT,PAGE_FORMAT_ATTRIBS,SHAPE_TAG,SHAPE_ATTRIBS,T_TAG_CLOSE) # $# $@ OLD_DELIM=$IFS; IFS=, ; DELIM=$IFS
PARAMS_COUNT=$#PARAMS

n=0
for ELEMENT in PARAMS; do # ARRAY LOOP
    n=$((n+1)) # counter
    PARAM_NUM=${n}
    NAME=${ELEMENT}
    VALUE=$( expr ${ELEMENT} )
    MSSG="${PARAM_NUM}) NAME: ${NAME}, VALUE: ${VALUE}"
    echo $MSSG 
    # return $MSSG
done

# 3. Reconstruct KNOWN_GOOD_SVG_CODE from PARAMETERS
# KNOWN_GOOD_SVG_CODE='<svg viewBox="0 0 200 200" xmlns="http://www.w3.org/2000/svg"><circle cx="100" cy="100" r="100"/></svg>'

GEN_STMT_ATTEMPT="${T_TAG_OPEN} ${CONTAINER}=${CONTAINER_ATTRIBS} ${PAGE_FORMAT}=${PAGE_FORMAT_ATTRIBS}><${SHAPE_TAG} ${SHAPE_ATTRIBS}/>${T_TAG_CLOSE}"

# Debug GEN_STMT_ATTEMPT using:  $ echo $GEN_STMT_ATTEMPT

# 4. Implement svg shape generator using positionally indexed arrays:
ENTITY[0]=circle
ENTITY[1]=ellipse
ENTITY[2]=square
ENTITY[3]=rectangle
ENTITY[4]=diamond

ENTITY_EQUATES_TO[0]=process
ENTITY_EQUATES_TO[1]=data-set
ENTITY_EQUATES_TO[2]=data-store
ENTITY_EQUATES_TO[3]=data-store
ENTITY_EQUATES_TO[4]=decision

CONNECTOR[]=line
CONNECTOR[]=arrowIn
CONNECTOR[]=arrowOut
CONNECTOR[]=arrowTo
CONNECTOR[]=arrowFrom
CONNECTOR[]=one-to-many
CONNECTOR[]=many-to-one
CONNECTOR[]=zero-or-one-to-many
CONNECTOR[]=many-to-one-or-zero
CONNECTOR[]=one-to-one
CONNECTOR[]=many-to-many

# 5. Implement svg shape generator using associative arrays, where keys are strings:

# 6. generate those bash statements from yml


exit 1

---
# PAGE =  # GRID =
# CONTAINER = [div,layer]
# SHAPE = [type,radius,anchor,layer]
# LINE = [anchorStart, anchorEnd,slope,length,stroke-width,stroke-color,stroke-pattern,tipStart,tipEnd]

# CONTAINER_YML # ENTITY_YML # CONNECTOR_YML
---
# Substitution
# # heredoc <<< YML2SVG YML2SVG
# YAML review
# CONSTANT
# Variable
# Array
# Encapsulation
# Inheritance
# Scripts
# Functions
# explode
# implode
# Tests
# HTML Includes
# InnerHTML
# Singleton
# Decorator
# Polymorphism
---
# bash Arrays
# bash Array Manips
# bash Aliases
# shyaml
# json2yaml
# yaml2json
# yaml2svg
# bash-gen-svg # this script!!
# pdfminer
# bash-gen-pdfs
# bash-gen-statments

# bash-file-manips
# bash-env
# bash-man
# bash-human
# bash-test
# bash-expr
# bash-eval
# bash-line2col
# bash-col2line
# bash-git
# bash-curl
# bash-mongodb
# bash redis
# bash mysql
# bash mariadb
# bash kvm