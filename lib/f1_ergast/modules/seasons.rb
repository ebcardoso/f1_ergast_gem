module F1Ergast
  class Seasons < ErgastServices
    def list_all(offset = 0)
      url = "#{SEASONS}?offset=#{offset}"
      result = get_request(url)
      result
    end
  end
end
