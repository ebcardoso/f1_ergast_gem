module F1Ergast
  class Laps < ErgastServices
    def lap_infos(year, round, lap_number)
      url = "#{year}/#{round}/#{LAPS}/#{lap_number}"
      result = get_request(url)
      result
    end
  end
end
  