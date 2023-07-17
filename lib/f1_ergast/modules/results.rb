module F1Ergast
  class Results < ErgastServices
    def race_result(year, round)
      url = "#{year}/#{round}/#{RESULT_RACE}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end
    
    def most_recent
      result = get_request(RESULT_MOST_RECENT)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end
  end
end
