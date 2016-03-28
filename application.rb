require 'net/http'
require 'json'
require 'pry'
require './issues'
require './view'

issues = Issue.new

issue_list = issues.create_list

formatter = FormattedIssue.new

formatter.format_issues(issue_list)
