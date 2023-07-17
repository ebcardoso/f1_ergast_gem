module F1Ergast
  class Schedules < ErgastServices
    def by_year(year)
      url = "#{year}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def by_race(year, round)
      url = "#{year}/#{round}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def current_season
      result = get_request("current")
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end
  end
end
  