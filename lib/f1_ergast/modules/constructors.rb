module F1Ergast
  class Constructors < ErgastServices
    def self.list_all(offset = 0, limit = 10)
      url = "#{CONSTRUCTORS}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def self.by_year(year, offset = 0, limit = 10)
      url = "#{year}/#{CONSTRUCTORS}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def self.by_year_in_round(year, round, offset = 0, limit = 10)
      url = "#{year}/#{round}/#{CONSTRUCTORS}"
      query = "?offset=#{offset}&limit=#{limit}"
      result = get_request(url, query)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end

    def self.describe(id)
      url = "#{CONSTRUCTORS}/#{id}"
      result = get_request(url)
      result
    rescue
      return { error: 'Error to request Ergast API.' }
    end
  end
end
