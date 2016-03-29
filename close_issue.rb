class CloseIssue
  def close_issue(issue_number)
    uri = URI("https://api.github.com/repos/captainbarbosa/issue_closer/issues/#{issue_number}")

    username = ENV['GITHUB_USER']
    password = ENV['GITHUB_PASSWORD']

    # Build client
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    # Build request
    request = Net::HTTP::Patch.new(uri.request_uri)
    request.body = {"state" => "closed"}.to_json
    request.basic_auth(username, password)

    # Perform request
    response = http.request(request)

    # Request response becomes a Ruby object
    final_response = JSON.parse(response.body)
    puts "--------------------------------------------------------------------"
    puts "Issue ##{issue_number} closed!"
    puts "--------------------------------------------------------------------"

  end
end
