module F1Ergast
  class FinishingStatus < ErgastServices
    def list_all(offset = 0)
      url = "#{FINISHING_STATUS}?offset=#{offset}"
      result = get_request(url)
      result
    end

    def by_year(year)
      url = "#{year}/#{FINISHING_STATUS}"
      result = get_request(url)
      result
    end

    def by_year_in_round(year, round)
      url = "#{year}/#{round}/#{FINISHING_STATUS}"
      result = get_request(url)
      result
    end
  end
end
