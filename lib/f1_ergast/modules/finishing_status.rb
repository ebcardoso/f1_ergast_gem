module F1Ergast
  class FinishingStatus < ErgastServices
    def list_all(offset = 0, limit = 10)
      url = "#{FINISHING_STATUS}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def by_year(year, offset = 0, limit = 10)
      url = "#{year}/#{FINISHING_STATUS}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def by_year_in_round(year, round, offset = 0, limit = 10)
      url = "#{year}/#{round}/#{FINISHING_STATUS}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end
  end
end
