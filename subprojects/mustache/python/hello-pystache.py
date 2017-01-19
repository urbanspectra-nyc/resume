#!/usr/bin/python

import pystache
print pystache.render('Hey there {{person}}!', {'person': 'GitHub'})
