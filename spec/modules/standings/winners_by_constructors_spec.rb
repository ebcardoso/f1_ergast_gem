require 'rails_helper'
require 'f1_ergast'

RSpec.describe F1Ergast::Standings do
  context 'Success Path - Winners By Driver' do
    before(:all) do
      @result = F1Ergast::Standings.winners_by_constructors
    end

    it 'Should have status 200' do
      expect(@result.code).to eq(200)
    end
  end
end
