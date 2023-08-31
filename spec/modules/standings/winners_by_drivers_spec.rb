require 'rails_helper'
require 'f1_ergast'

RSpec.describe F1Ergast::Standings do
  context 'Success Path - Winners By Constructors' do
    before(:all) do
      @result = F1Ergast::Standings.winners_by_drivers
    end

    it 'Should have status 200' do
      puts @result
      expect(@result.code).to eq(200)
    end
  end
end
