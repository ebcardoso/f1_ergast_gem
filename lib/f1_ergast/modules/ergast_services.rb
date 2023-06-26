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

    def get_request(path_url)
      HTTParty.get("#{@url}#{path_url}", headers: @headers)
    end
  end
end
  