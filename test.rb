require 'minitest/autorun'
require 'json'
require 'pry'
require './issues'
require './view'
require './close_issue'

class ApplicationTest < Minitest::Test
  def test_issues_can_be_listed_from_GET_response
    file =  File.read("./authed_issues.json")
    response = JSON.parse(file)
    formatter = FormattedIssue.new
    formatter.format_issues(response)
  end

  def test_issue_status_can_be_updated
  end
end
