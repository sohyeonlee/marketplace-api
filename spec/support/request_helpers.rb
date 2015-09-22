module Request
  module JSONHelpers
    def json_response
      @json_response ||= JSON.parse(response.body, symbolize_names: true)
    end
  end

  module HeadersHelpers
    def api_header(version = 1)
      request.headers['Accept'] = "application/vnd.marketplace.v#{version}"
    end

    def api_response_format(format = Mime::JSON)
      request.headers['Accept'] = "#{request.headers['Accept']}, #{Mime::JSON}"
      request.headers['Content-Type'] = format.to_s
    end

    def include_header_apis
      api_header
      api_response_format
    end
    
    def api_authorization_header(token)
      request.headers['Authorization'] =  token
    end
  end
end
