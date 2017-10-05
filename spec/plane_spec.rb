require './lib/plane'

describe Plane do
  context 'landing' do

    it { is_expected.to respond_to(:land).with(1).argument}


    it 'responds to land' do
      expect(subject).to respond_to :land
    end
  end
end
