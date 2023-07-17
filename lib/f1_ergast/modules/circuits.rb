module F1Ergast
  class Circuits < ErgastServices
    def list_all(offset = 0)
      url = "#{CIRCUITS}?offset=#{offset}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def by_year(year)
      url = "#{year}/#{CIRCUITS}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def by_year_in_round(year, round)
      url = "#{year}/#{round}/#{CIRCUITS}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def describe(id)
      url = "#{CIRCUITS}/#{id}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end
  end
end
