module F1Ergast
  class Standings < ErgastServices
    #After Race
    def drivers_after_race(year, round)
      url = "#{year}/#{round}/#{STANDINGS_DRIVER}"
      result = get_request(url)
      result
    end

    #After Season
    def drivers_in_season(year)
      url = "#{year}/#{STANDINGS_DRIVER}"
      result = get_request(url)
      result
    end

    #Current
    def drivers_current
      url = "#{STANDINGS_CURRENT}/#{STANDINGS_DRIVER}"
      result = get_request(url)
      result
    end
  end
end
