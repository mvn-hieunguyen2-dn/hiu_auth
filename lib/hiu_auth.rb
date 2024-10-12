# frozen_string_literal: true
require_relative 'hiu_http'

class HiuAuth
  # Verify google id token from google credential response
  # Arguments:
  #  id_token: (String)
  #
  # Output: [is_success(boolean), data(Hash)]
  def self.verify_google_credential(id_token)
    base_url = 'https://www.googleapis.com'
    uri = "/oauth2/v3/tokeninfo?id_token=#{id_token}"
    headers = { 'Content-Type': 'application/json' }
    request = HiuHttp.new(base_url, uri, :get, headers)
    response = request.call
    if response.status == 200
      data = JSON.parse(response.body)
      return [true, data]
    end
    [false]
  end
end
