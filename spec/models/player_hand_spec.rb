require "./app/models/player_hand"

describe Player_Hand do

  before(:each) do
    @hand = Player_Hand.new
    @base = Base_Card.new(
      Faker::String.random(10),
      Faker::String.random(50)
    )
    @hero = Hero_Card.new(
      Faker::StarWars.character,
      Faker::StarWars.quote,
      Faker::Number.number(2),
      Faker::Number.number(2)
    )
  end

  let (:hand) { @hand }
  let (:base) { @base }
  let (:hero) { @hero }

  it "checks initialized player hand object" do
    expect(hand.is_a?(Player_Hand)).to eq(true)
    expect(hand.base_lanes[0].is_a?(Base_Lane)).to eq(true)
    expect(hand.base_lanes[1].is_a?(Base_Lane)).to eq(true)
    expect(hand.base_lanes[2].is_a?(Base_Lane)).to eq(true)
    expect(hand.drawn_cards).to eq([])
    expect(hand.discard_pile).to eq([])
  end

  context "drawn_cards array tests" do
    it "expects a Base_Card can be added to the drawn_cards array" do
      expect(hand.drawn_cards.length).to eq(0)
      hand.add_drawn_card(base)
      expect(hand.drawn_cards.length).to eq(1)
      hand.add_drawn_card(base)
      hand.add_drawn_card(base)
      expect(hand.drawn_cards.length).to eq(3)
    end

    it "expects a Hero_Card can be added to the drawn_cards array" do
      expect(hand.drawn_cards.length).to eq(0)
      hand.add_drawn_card(hero)
      expect(hand.drawn_cards.length).to eq(1)
      hand.add_drawn_card(hero)
      hand.add_drawn_card(hero)
      expect(hand.drawn_cards.length).to eq(3)
    end

    it "expects Base_Cards and Hero_Cards can be added to the drawn_cards array" do
      expect(hand.drawn_cards.length).to eq(0)
      hand.add_drawn_card(base)
      expect(hand.drawn_cards.length).to eq(1)
      hand.add_drawn_card(hero)
      expect(hand.drawn_cards.length).to eq(2)
      hand.add_drawn_card(base)
      expect(hand.drawn_cards.length).to eq(3)
      hand.add_drawn_card(hero)
      expect(hand.drawn_cards.length).to eq(4)
    end
  end
end
