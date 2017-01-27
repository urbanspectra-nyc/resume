#!/usr/bin/ruby

require 'mustache'
Mustache.render("Hello {{planet}}", planet: "World!")
