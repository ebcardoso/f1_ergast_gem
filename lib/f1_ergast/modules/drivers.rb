module F1Ergast
  class Drivers < ErgastServices
    def list_all(offset = 0)
      url = "#{DRIVERS}?offset=#{offset}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def by_year(year)
      url = "#{year}/#{DRIVERS}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def by_year_in_round(year, round)
      url = "#{year}/#{round}/#{DRIVERS}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def describe(id)
      url = "#{DRIVERS}/#{id}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end
  end
end
