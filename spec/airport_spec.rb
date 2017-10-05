require './lib/airport'

describe Airport do

    it 'landed planes show in the airport array of planes' do
      plane = Plane.new
      plane.land(subject)
      expect(subject.planes[0]).to eq plane
    end

    it 'taken off planes are removed from array' do
      plane = Plane.new
      plane.land(subject)
      plane.take_off(subject)
      expect(subject.planes.count).to eq 0
    end

end
