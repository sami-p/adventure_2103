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

    it 'has a name' do
      park1 = Park.new('Capitol Reef')
      expect(park1.name).to eq('Capitol Reef')
    end

    it 'can have trails' do
      park1 = Park.new('Capitol Reef')
      expect(park1.trails).to eq([])
    end
  end
end
