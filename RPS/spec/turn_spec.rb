require 'turn'

describe Turn do 
  subject(:turn) { described_class.new(options) }
  let(:options) { {"player name" => "Omar", "player choice" => :rock, "opponent choice" => scissors} }
  
describe '#player_name' do 
  it 'returns players name'
  expect(turn.player_name).to eq 'Omar'
  end 
end 

describe '#player_option' do 
  it 'returns players option' do
  expect(turn.player_choice).to eq :rock
  end
end 

describe '#opponent_option' do 
  it 'returns the opponents option' do 
  expect(turn.opponent_choice).to eq :scissors
  end
end

context 'end game' do
  subject(:win_turn) { turn }
  subject(:lose_turn) { described_class.new(lose_options) }
  subject(:draw_turn) { described_class.new(draw_options) }

  let(:lose_options) { {"player_name" => "Omar", "player_choice" => :rock, "opponent_choice" => :paper} }
  let(:draw_options) { {"player_name" => "Omar", "player_choice" => :rock, "opponent_choice" => :rock} }

describe '#win?' do
  it 'returns true if player_choice is :rock and opponent_choice is :scissors' do
  expect(win_turn.win?).to eq true
  end
end

describe '#lose?' do
  it 'returns true if player_choice is :rock and opponent_choice is :paper' do
  expect(lose_turn.lose?).to eq true
  end
end

describe '#draw?' do
  it 'returns true if player_choice is :rock and opponent_choice is :rock' do
  expect(draw_turn.draw?).to eq true
  end
end
end
