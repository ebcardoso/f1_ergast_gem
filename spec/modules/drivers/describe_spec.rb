require 'rails_helper'
require 'f1_ergast'

RSpec.describe F1Ergast::Drivers do
  context 'Success Path' do
    before(:all) do
      @result = F1Ergast::Drivers.describe('abate')
    end

    it 'Should have status 200' do
      expect(@result.code).to eq(200)
    end
  end
end
