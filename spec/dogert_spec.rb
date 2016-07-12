require "spec_helper"

describe Dogert do
  subject { Dogert.new }

  describe '#process' do
    let(:input) { 'My gramdmom gave a sweater for Christmas' }
    let(:output) { subject.process(input) }

    it 'converts to lowercase' do
      expect(output.downcase).to eq output
    end

    it 'combines nouns with doge adjectives' do
      expect(output).to match /so gramdmom\./i
      expect(output).to match /such sweater\./i
      expect(output).to match /very christmas\./i
    end

    it 'always appends "wow."' do
      expect(output).to end_with "wow."
    end
  end
end
