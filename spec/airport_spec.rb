require './lib/airport'

describe Airport do
  context 'taking off planes' do

    it 'landed planes show in the airport array of planes' do
      plane = Plane.new
      plane.land(subject)
      expect(subject.planes[0]).to eq plane
    end

    it 'can take off planes and remove them from airport' do
      plane = Plane.new
      plane.land(subject)
      expect(subject.planes[0]).to eq plane
      subject.take_off(plane)
      expect(subject.planes.count).to eq 0
    end
  end
end
