module F1Ergast
  class Schedules < ErgastServices
    def self.by_year(year, offset = 0, limit = 10)
      url = "#{year}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def self.by_race(year, round)
      url = "#{year}/#{round}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def self.current_season(offset = 0, limit = 10)
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(SCHEDULE_CURRENT, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end
  end
end
  