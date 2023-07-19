module F1Ergast
  class Standings < ErgastServices
    #After Race
    def drivers_after_race(year, round, offset = 0, limit = 10)
      url = "#{year}/#{round}/#{STANDINGS_DRIVER}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def constructors_after_race(year, round, offset = 0, limit = 10)
      url = "#{year}/#{round}/#{STANDINGS_CONSTRUCTORS}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    #After Season
    def drivers_in_season(year, offset = 0, limit = 10)
      url = "#{year}/#{STANDINGS_DRIVER}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def constructors_in_season(year, offset = 0, limit = 10)
      url = "#{year}/#{STANDINGS_CONSTRUCTORS}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    #Current
    def drivers_current(offset = 0, limit = 10)
      url = "#{STANDINGS_CURRENT}/#{STANDINGS_DRIVER}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def constructors_current(offset = 0, limit = 10)
      url = "#{STANDINGS_CURRENT}/#{STANDINGS_CONSTRUCTORS}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end
  end
end
