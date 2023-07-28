module F1Ergast
  class Pitstops < ErgastServices
    def self.by_year_in_round(year, round, offset = 0, limit = 10)
      url = "#{year}/#{round}/#{PITSTOPS}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def self.specific_pitstop(year, round, pitstop_number, offset = 0, limit = 10)
      url = "#{year}/#{round}/#{PITSTOPS}/#{pitstop_number}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end
  end
end
  