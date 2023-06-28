module F1Ergast
  class Drivers < ErgastServices
    def list_all(offset = 0)
      url = "#{DRIVERS}?offset=#{offset}"
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
