mustache-Ruby-demo
====================

Simple Mustache demos in Runy.

Purpose
=======

This repo is for testing and demonstrating simple demos in Mustache using Ruby.

Configuration
=============

Before getting started, be sure to download the Mustache Rubygem.

The source code is available [on GitHub](https://github.com/mustache/mustache).

This gem has been tested with Ruby 2.x. Other versions may work; please give us feedback on what you have tested on. 

    # Install via gem
    gem install mustache

    # Or include it in a Gemfile
    gem "mustache", "~> 1.0"

Afterwards
==========

Once everything is set up correctly, try some of the demos in this repo.

    # Launch irb from the terminal
    irb
    > require 'mustache'
    => true
    > Mustache.render("Hello {{planet}}", planet: "World!")
    => "Hello World!"

This simple demo, if everything is set up correctly, will output the above responses (indicated with =>, which siginfies irb output).

Additional Info
===============

TBA