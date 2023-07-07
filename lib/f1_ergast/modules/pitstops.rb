module F1Ergast
  class Pitstops < ErgastServices
    def by_year_in_round(year, round)
      url = "#{year}/#{round}/#{PITSTOPS}"
      result = get_request(url)
      result
    end

    def specific_pitstop(year, round, pitstop_number)
      url = "#{year}/#{round}/#{PITSTOPS}/#{pitstop_number}"
      result = get_request(url)
      result
    end
  end
end
  