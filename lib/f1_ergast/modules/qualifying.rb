module F1Ergast
  class Qualifying < ErgastServices
    def by_year_in_round(year, round)
      url = "#{year}/#{round}/#{QUALIFYING}"
      result = get_request(url)
      result
    end
  end
end
