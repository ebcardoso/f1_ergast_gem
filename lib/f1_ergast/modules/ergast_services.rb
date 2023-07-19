require 'httparty'

module F1Ergast
  class ErgastServices
    def initialize
      @url = ROOT_URL
      @headers = {
        'Content-Type' => 'application/json',
        'Accept' => 'application/json'
      }
    end

    def get_request(path_url, query = '')
      HTTParty.get("#{@url}#{path_url}.json#{query}", headers: @headers)
    end
  end
end
  