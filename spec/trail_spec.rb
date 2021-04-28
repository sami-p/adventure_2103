require 'rspec'
require './lib/trail'
require './lib/hiker'
require './lib/park'

RSpec.describe Trail do
  describe '#initialize' do
    it 'exists' do
      trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})
      expect(trail1).to be_an_instance_of(Trail)
    end

    it 'has a name' do
      trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})
      expect(trail1.name).to eq('Grand Wash')
    end

    it 'has a length' do
      trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})
      expect(trail1.length).to eq('2.2 miles')
    end

    it 'has a level' do
      trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})
      expect(trail1.level).to eq(:easy)
    end
  end

  describe 'can make another trail' do
    it 'exists' do
      trail2 = Trail.new({name: 'Cohab Canyon', length: '1.7 miles', level: :moderate})
      expect(trail2).to be_an_instance_of(Trail)
    end
  end
end
