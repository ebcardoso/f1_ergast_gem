require 'httparty'

module F1Ergast
  class ErgastServices
    def self.get_url
      ROOT_URL
    end

    def self.get_headers
      {
        'Content-Type' => 'application/json',
        'Accept' => 'application/json'
      }
    end

    def self.get_request(path_url, query = '')
      HTTParty.get("#{get_url}#{path_url}.json#{query}", headers: get_headers)
    end
  end
end
  