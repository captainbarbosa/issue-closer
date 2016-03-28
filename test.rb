require 'minitest/autorun'
require 'net/http'
require 'json'
require 'pry'

class Issue
  def query_list
  end
end

class IssueTest < Minitest::Test
  def test_classes_exist
    assert Issue
  end

  def test_user_issues_can_be_listed
    api = Issue.new

    assert_equal []. api.list
  end

  def test_change_open_issue_to_closed
  end

end
