module F1Ergast
  class Constructors < ErgastServices
    def list_all(offset = 0, limit = 10)
      url = "#{CONSTRUCTORS}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def by_year(year, offset = 0, limit = 10)
      url = "#{year}/#{CONSTRUCTORS}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def by_year_in_round(year, round, offset = 0, limit = 10)
      url = "#{year}/#{round}/#{CONSTRUCTORS}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def describe(id)
      url = "#{CONSTRUCTORS}/#{id}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end
  end
end
