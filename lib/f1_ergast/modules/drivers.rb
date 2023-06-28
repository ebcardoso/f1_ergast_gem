module F1Ergast
  class Drivers < ErgastServices
    def list_all(offset = 0)
      url = "#{DRIVERS}?offset=#{offset}"
      result = get_request(url)
      result
    end

    def by_year(year)
      url = "#{year}/#{DRIVERS}"
      result = get_request(url)
      result
    end

    def by_year_in_round(year, round)
      url = "#{year}/#{round}/#{DRIVERS}"
      result = get_request(url)
      result
    end

    def describe(id)
      url = "#{DRIVERS}/#{id}"
      result = get_request(url)
      result
    end
  end
end
