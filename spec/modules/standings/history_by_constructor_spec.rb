require 'rails_helper'
require 'f1_ergast'

RSpec.describe F1Ergast::Standings do
  context 'Success Path - History By Constructor' do
    before(:all) do
      @result = F1Ergast::Standings.history_by_constructor('mclaren')
    end

    it 'Should have status 200' do
      expect(@result.code).to eq(200)
    end
  end
end
