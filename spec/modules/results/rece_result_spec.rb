require 'rails_helper'
require 'f1_ergast'

RSpec.describe F1Ergast::Results do
  context 'Success Path' do
    before(:all) do
      service = F1Ergast::Results.new
      @result = service.race_result(2023, 1)
    end

    it 'Should have status 200' do
      expect(@result.code).to eq(200)
    end
  end
end
