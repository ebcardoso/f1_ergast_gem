module F1Ergast
  class Circuits < ErgastServices
    def self.list_all(offset = 0, limit = 10)
      url = "#{CIRCUITS}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def self.by_year(year, offset = 0, limit = 10)
      url = "#{year}/#{CIRCUITS}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def self.by_race(year, round)
      url = "#{year}/#{round}/#{CIRCUITS}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def self.describe(id)
      url = "#{CIRCUITS}/#{id}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end
  end
end
