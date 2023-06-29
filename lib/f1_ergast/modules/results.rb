module F1Ergast
  class Results < ErgastServices
    def race_result(year, round)
      url = "#{year}/#{round}/#{RESULT_RACE}"
      result = get_request(url)
      result
    end
    
    def most_recent
      result = get_request(RESULT_MOST_RECENT)
      result
    end
  end
end
