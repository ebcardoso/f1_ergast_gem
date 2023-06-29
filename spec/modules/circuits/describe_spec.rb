require 'rails_helper'
require 'f1_ergast'

RSpec.describe F1Ergast::Circuits do
  context 'Success Path' do
    before(:all) do
      service = F1Ergast::Circuits.new
      @result = service.describe('abate')
    end

    it 'Should have status 200' do
      expect(@result.code).to eq(200)
    end
  end
end
