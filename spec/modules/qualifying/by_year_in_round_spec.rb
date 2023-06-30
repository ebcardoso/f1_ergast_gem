require 'rails_helper'
require 'f1_ergast'

RSpec.describe F1Ergast::Qualifying do
  context 'Success Path' do
    before(:all) do
      service = F1Ergast::Qualifying.new
      @result = service.by_year_in_round(Date.current.year-1, 1)
    end

    it 'Should have status 200' do
      expect(@result.code).to eq(200)
    end
  end
end
