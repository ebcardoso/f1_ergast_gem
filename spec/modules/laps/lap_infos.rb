require 'rails_helper'
require 'f1_ergast'

RSpec.describe F1Ergast::Laps do
  context 'Success Path' do
    before(:all) do
      service = F1Ergast::Laps.new
      @result = service.lap_infos(Date.current.year-1, 1, 10)
      puts @result
    end

    it 'Should have status 200' do
      expect(@result.code).to eq(200)
    end
  end
end