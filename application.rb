require 'net/http'
require 'json'
require 'pry'
require './issues'
require './view'
require './close_issue'

issues = Issue.new

issue_list = issues.create_list

formatter = FormattedIssue.new

formatter.format_issues(issue_list)

puts "Which issue would you like to close?"
issue_number = gets.to_i

issue_closer = CloseIssue.new

issue_closer.close_issue(issue_number)
