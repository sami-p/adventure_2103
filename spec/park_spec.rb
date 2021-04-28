require 'rspec'
require './lib/trail'
require './lib/hiker'
require './lib/park'

RSpec.describe Park do
  describe '#initialize' do
    it 'exists' do
      park1 = Park.new('Capitol Reef')
      expect(park1).to be_an_instance_of(Park)
    end
  end
end
