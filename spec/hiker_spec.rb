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

  describe '#pack' do
    it 'can add snacks' do
      hiker = Hiker.new('Dora', :moderate)

      hiker.pack('water', 1)
      hiker.pack('trail mix', 3)

      expect(hiker.snacks).to eq({"water"=>1, "trail mix"=>3})
    end

    it 'can accumulate already packed snacks' do
      hiker = Hiker.new('Dora', :moderate)

      hiker.pack('water', 1)
      hiker.pack('trail mix', 3)
      expect(hiker.snacks).to eq({"water"=>1, "trail mix"=>3})

      hiker.pack('water', 1)
      expect(hiker.snacks).to eq({"water"=>2, "trail mix"=>3})
    end
  end

  describe '#parks_visited' do
    it 'starts with no parks visited' do
      hiker = Hiker.new('Dora', :moderate)
      expect(hiker.parks_visited).to eq([])
    end
  end
end
