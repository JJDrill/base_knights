require "./app/models/player_hand"

describe Player_Hand do

  it "checks initialized object" do
    hand = Player_Hand.new
    expect(hand.is_a?(Player_Hand)).to eq(true)
    # expect(hand.base_lanes[0].is_a?(Base_Lane).to eq(true))
    # expect(hand.base_lanes[1].is_a?(Base_Lane).to eq(true))
    # expect(hand.base_lanes[2].is_a?(Base_Lane).to eq(true))
  end
end
