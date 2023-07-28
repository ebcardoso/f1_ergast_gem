module F1Ergast
  class Results < ErgastServices
    def self.race_result(year, round, offset = 0, limit = 10)
      url = "#{year}/#{round}/#{RESULT_RACE}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end
    
    def self.most_recent(offset = 0, limit = 10)
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(RESULT_MOST_RECENT, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end
  end
end
