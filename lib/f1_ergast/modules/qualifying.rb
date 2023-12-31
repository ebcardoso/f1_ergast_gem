module F1Ergast
  class Qualifying < ErgastServices
    def self.by_race(year, round, offset = 0, limit = 10)
      url = "#{year}/#{round}/#{QUALIFYING}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end
  end
end
