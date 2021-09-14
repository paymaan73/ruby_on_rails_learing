require 'rspec'
require './libs/dog'

RSpec.describe Dog do
  describe '#bark' do
    it 'return the string "Woof"' do
      expect(subject.bark).to eq('woof')
    end
  end


  describe '#feed' do
    context 'when the dog is hungry' do
      subject { described_class.new(hunger_level: 7) }

      it 'is no longer hungry' do
        subject.feed
        expect(subject).to_not be_hungry
      end
    end
  ens


  describe '#hungry?' do
    context 'when hunger_level is more than 5' do
      subject { described_class.new(hunger_level: 7) }
      it 'returns true' do
        expect(subject).to be_hungry
      end
    end

    context 'hunger_level is 5 or less' do
      subject { described_class.new(hunger_level: 3) }
      it 'return false' do
        expect(subject).to_not be_hungry
      end
  end
  end
end
