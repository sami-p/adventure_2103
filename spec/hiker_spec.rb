require 'rspec'
require './lib/trail'
require './lib/hiker'
require './lib/park'

RSpec.describe Hiker do
  describe '#initialize' do
    it 'exits' do
      hiker = Hiker.new('Dora', :moderate)
      expect(hiker).to be_an_instance_of(Hiker)
    end

    it 'has a name' do
      hiker = Hiker.new('Dora', :moderate)
      expect(hiker.name).to eq('Dora')
    end

    it 'has an experience leve' do
      hiker = Hiker.new('Dora', :moderate)
      expect(hiker.experience_level).to eq(:moderate)
    end

    it 'starts without snacks' do
      hiker = Hiker.new('Dora', :moderate)
      expect(hiker.snacks).to eq({})
    end
  end
end
