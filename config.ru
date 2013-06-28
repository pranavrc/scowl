#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'
require 'rack'

require 'randomowl.rb'

set :root, Pathname(__FILE__).dirname
set :environment, :production
set :run, false
run Sinatra::Application
