require 'rails_helper'
require 'f1_ergast'

RSpec.describe F1Ergast::Schedules do
  context 'Success Path' do
    before(:all) do
      service = F1Ergast::Schedules.new
      @result = service.current_season
      puts @result
    end

    it 'Should have status 200' do
      expect(@result.code).to eq(200)
    end
  end
end
