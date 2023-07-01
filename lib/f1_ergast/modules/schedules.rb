module F1Ergast
  class Schedules < ErgastServices
    def by_year(year)
      url = "#{year}"
      result = get_request(url)
      result
    end

    def by_race(year, round)
      url = "#{year}/#{round}"
      result = get_request(url)
      result
    end

    def current_season
      result = get_request("current")
      result
    end
  end
end
  