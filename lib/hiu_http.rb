# frozen_string_literal: true

class HiuHttp
  attr_reader :method, :connection

  def initialize(base_url, uri, method, headers, options = {})
    Excon.defaults[:ssl_verify_peer] = false
    @method = method
    @connection = Excon.new(
      base_url + uri,
      headers:     headers,
      body:        URI.encode_www_form(options),
      tcp_nodelay: true,
      nonblock:    false,
    )
  end

  def call
    connection.request(method: method)
  end
end
