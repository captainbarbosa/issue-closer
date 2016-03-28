require 'net/http'
require 'json'
require 'pry'
require './issues'

issues = Issue.new
puts issues.list
