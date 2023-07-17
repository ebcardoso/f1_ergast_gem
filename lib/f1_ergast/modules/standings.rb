module F1Ergast
  class Standings < ErgastServices
    #After Race
    def drivers_after_race(year, round)
      url = "#{year}/#{round}/#{STANDINGS_DRIVER}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def constructors_after_race(year, round)
      url = "#{year}/#{round}/#{STANDINGS_CONSTRUCTORS}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    #After Season
    def drivers_in_season(year)
      url = "#{year}/#{STANDINGS_DRIVER}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def constructors_in_season(year)
      url = "#{year}/#{STANDINGS_CONSTRUCTORS}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    #Current
    def drivers_current
      url = "#{STANDINGS_CURRENT}/#{STANDINGS_DRIVER}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def constructors_current
      url = "#{STANDINGS_CURRENT}/#{STANDINGS_CONSTRUCTORS}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end
  end
end
