module F1Ergast
  class Laps < ErgastServices
    def lap_infos(year, round, lap_number)
      url = "#{year}/#{round}/#{LAPS}/#{lap_number}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end
  end
end
  