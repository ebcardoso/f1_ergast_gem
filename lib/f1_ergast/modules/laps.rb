module F1Ergast
  class Laps < ErgastServices
    def lap_infos(year, round, lap_number, offset = 0, limit = 10)
      url = "#{year}/#{round}/#{LAPS}/#{lap_number}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end
  end
end
  