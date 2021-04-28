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

  describe '#add_trail' do
    it 'can add a trail' do
      park1 = Park.new('Capitol Reef')
      trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})
      trail2 = Trail.new({name: 'Cohab Canyon', length: '1.7 miles', level: :moderate})

      park1.add_trail(trail1)
      park1.add_trail(trail2)

      expect(park1.trails).to eq([trail1, trail2])
    end

    it 'can create other instance of park' do
      park2 = Park.new('Bryce Canyon')
      expect(park2).to be_an_instance_of(Park)
    end

    it 'can #add_trail to different instance of park' do
      park2 = Park.new('Bryce Canyon')
      trail3 = Trail.new({name: 'Tower Bridge', length: '3.0 miles', level: :moderate})

      park2.add_trail(trail3)

      expect(park2.trails).to eq([trail3])
    end
  end

  describe 'Iteration 2' do
    it 'adds trails to park1' do
      park1 = Park.new('Capitol Reef')

      trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})
      trail2 = Trail.new({name: 'Cohab Canyon', length: '1.7 miles', level: :moderate})
      trail3 = Trail.new({name: 'Chimney Rock Loop', length: '3.6 miles', level: :strenuous})

      park1.add_trail(trail1)
      park1.add_trail(trail2)
      park1.add_trail(trail3)

      hiker = Hiker.new('Dora', :moderate)
      hiker.visit(park1)

      expect(park1.trails).to eq([trail1, trail2, trail3])
      expect(park1.trails_shorter_than(2.5)).to eq([trail1, trail2])
    end

    it 'adds trails to park 2' do
      park2 = Park.new('Bryce Canyon')

      trail4 = Trail.new({name: "Queen's/Navajo Loop", length: '2.9 miles', level: :moderate})
      trail5 = Trail.new({name: 'Rim Trail', length: '11 miles', level: :easy})
      trail6 = Trail.new({name: 'Tower Bridge', length: '3 miles', level: :moderate})

      park2.add_trail(trail4)
      park2.add_trail(trail5)
      park2.add_trail(trail6)
      
      hiker = Hiker.new('Dora', :moderate)
      hiker.visit(park2)

      expect(park2.trails).to eq([trail4, trail5, trail6])
      expect(park2.trails_shorter_than(2.5)).to eq([])
    end
  end
end
