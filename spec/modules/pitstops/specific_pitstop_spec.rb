require 'rails_helper'
require 'f1_ergast'

RSpec.describe F1Ergast::Pitstops do
  context 'Success Path' do
    before(:all) do
      service = F1Ergast::Pitstops.new
      @result = service.specific_pitstop(Date.current.year-1, 1, 1)
    end

    it 'Should have status 200' do
      expect(@result.code).to eq(200)
    end
  end
end
