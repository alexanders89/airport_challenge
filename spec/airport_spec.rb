require './lib/airport'

describe Airport do

  context 'basics' do

    it 'is initialized with an empty array of planes' do
      expect(subject.planes).to eq []
    end

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

  context 'landing planes' do
    it 'can land plane' do
      plane = Plane.new
      expect(subject.land(plane)).to eq plane
    end

    it 'will not allow landing when at capacity' do
      20.times do
        subject.land(Plane.new)
      end
      expect { subject.land(Plane.new) }.to raise_error "Airport is full!"
    end
  end

  context 'taking off planes' do
    it 'can take off a plane' do
      plane = Plane.new
      subject.land(plane)
      expect(subject.take_off(plane)).to eq plane
    end
  end

end
