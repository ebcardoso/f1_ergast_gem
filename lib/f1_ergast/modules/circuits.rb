module F1Ergast
  class Circuits < ErgastServices
    def list_all(offset = 0, limit = 10)
      url = "#{CIRCUITS}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def by_year(year, offset = 0, limit = 10)
      url = "#{year}/#{CIRCUITS}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def by_year_in_round(year, round)
      url = "#{year}/#{round}/#{CIRCUITS}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def describe(id)
      url = "#{CIRCUITS}/#{id}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end
  end
end
