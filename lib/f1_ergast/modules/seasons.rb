module F1Ergast
  class Seasons < ErgastServices
    def self.list_all(offset = 0, limit = 10)
      url = "#{SEASONS}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end
  end
end
