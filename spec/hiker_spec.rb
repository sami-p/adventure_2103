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
  end
end
