require 'opponent'

describe Opponent do 
  subject(Opponent) { described_class.new }
end
decribe '#Choice' do
  it 'returns random choice' do
  expect(Opponent::Choice).to include opponent.choice
  end 
end
