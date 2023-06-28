module F1Ergast
  class Constructors < ErgastServices
    def list_all(offset = 0)
      url = "#{CONSTRUCTORS}?offset=#{offset}"
      result = get_request(url)
      result
    end

    def by_year(year)
      url = "#{year}/#{CONSTRUCTORS}"
      result = get_request(url)
      result
    end

    def by_year_in_round(year, round)
      url = "#{year}/#{round}/#{CONSTRUCTORS}"
      result = get_request(url)
      result
    end

    def describe(id)
      url = "#{CONSTRUCTORS}/#{id}"
      result = get_request(url)
      result
    end
  end
end
