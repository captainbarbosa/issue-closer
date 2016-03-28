class FormattedIssue
  attr_accessor :issues

  def format_issues(issues)
    puts "-----------------------------------------------------------------"
    puts "ISSUES FOR THIS REPOSITORY:"
    puts
    issues.each do |issue|
      puts "Issue number: #{issue["number"]}"
      puts "Title: #{issue["title"]}"
      puts "Description: #{issue["body"]}"
      puts
    end
    puts "-----------------------------------------------------------------"
  end
end
