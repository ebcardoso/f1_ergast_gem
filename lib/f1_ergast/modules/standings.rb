module F1Ergast
  class Standings < ErgastServices
    #After Race
    def self.drivers_after_race(year, round, offset = 0, limit = 10)
      url = "#{year}/#{round}/#{STANDINGS_DRIVER}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def self.constructors_after_race(year, round, offset = 0, limit = 10)
      url = "#{year}/#{round}/#{STANDINGS_CONSTRUCTORS}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    #After Season
    def self.drivers_in_season(year, offset = 0, limit = 10)
      url = "#{year}/#{STANDINGS_DRIVER}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def self.constructors_in_season(year, offset = 0, limit = 10)
      url = "#{year}/#{STANDINGS_CONSTRUCTORS}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    #Current
    def self.drivers_current(offset = 0, limit = 10)
      url = "#{STANDINGS_CURRENT}/#{STANDINGS_DRIVER}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def self.constructors_current(offset = 0, limit = 10)
      url = "#{STANDINGS_CURRENT}/#{STANDINGS_CONSTRUCTORS}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end
  end
end
