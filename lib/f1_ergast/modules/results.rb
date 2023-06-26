module F1Ergast
  class Results < ErgastServices
    def race_result(year, round)
      url = "#{year}/#{round}/#{RACE_RESULT}"
      result = get_request(url)
      result
    end
    
    def most_recent
      result = get_request(MOST_RECENT)
      result
    end
  end
end
