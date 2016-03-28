class Issue
  def list
    uri = URI("https://api.github.com/repos/captainbarbosa/captainbarbosa.github.io/issues")

    username = ENV['GITHUB_USER']
    password = ENV['GITHUB_PASSWORD']

    # Build client
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    # Build request
    request = Net::HTTP::Get.new(uri.request_uri)
    request.basic_auth(username, password)

    # Perform request
    response = http.request(request)

    # Request response becomes a Ruby object
    return JSON.parse(response.body)

    # Format response to list issues

  end
end
