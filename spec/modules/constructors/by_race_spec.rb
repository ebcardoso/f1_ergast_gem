require 'rails_helper'
require 'f1_ergast'

RSpec.describe F1Ergast::Constructors do
  context 'Success Path' do
    before(:all) do
      @result = F1Ergast::Constructors.by_race(Date.current.year-1, 1)
    end

    it 'Should have status 200' do
      expect(@result.code).to eq(200)
    end
  end
end
