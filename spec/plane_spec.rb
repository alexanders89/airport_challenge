require './lib/plane'

describe Plane do
  context 'landing' do

    it { is_expected.to respond_to(:land).with(1).argument}

    it 'responds to land' do
      expect(subject).to respond_to :land
    end

    it 'can land at an airport' do
      airport = double(:airport, planes: [])
      expect{ subject.land(airport) }.to_not raise_error
    end

    it 'is stored within the airport once landed' do
      airport = double(:airport, planes: [])
      subject.land(airport)
      expect(airport.planes[0]).to eq subject
    end
  end

  context 'taking off' do
    it 'responds to take off' do
      expect(subject).to respond_to :take_off
    end

    it 'can take off from an airport' do
      airport = double(:airport, planes: [])
      expect { subject.take_off(airport) }.to_not raise_error
    end
  end
end
