require "./app/models/player_hand"
require 'byebug'

describe Player_Hand do

  before(:each) do
    @hand = Player_Hand.new
    @base = BaseCard.new(
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
    expect(hand.BaseLanes[0].is_a?(BaseLane)).to eq(true)
    expect(hand.BaseLanes[1].is_a?(BaseLane)).to eq(true)
    expect(hand.BaseLanes[2].is_a?(BaseLane)).to eq(true)
    expect(hand.drawn_cards).to eq([])
    expect(hand.discard_pile).to eq([])
  end

  context "drawn_cards array tests" do
    it "expects a BaseCard can be added to the drawn_cards array" do
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

    it "expects BaseCards and Hero_Cards can be added to the drawn_cards array" do
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

    it "expects an error when not adding the correct card type" do
      begin
        hand.add_drawn_card("Not a correct card type.")
      rescue StandardError => e
        expect(e.message).to eq("Expecting a BaseCard or Hero_Card object.")
        expect(hand.drawn_cards.length).to eq(0)
      end
    end
  end

  context "move_drawn_base_to_lane tests" do

    it "expects an error when drawn card isn't a BaseCard" do
      begin
        hand.add_drawn_card(hero)
        hand.move_drawn_base_to_lane(0, 1)
      rescue StandardError => e
        expect(e.message).to eq("Expecting a BaseCard object.")
      end
      expect(hand.drawn_cards[0]).to eq(hero)
    end

    it "expects an error when drawn card id doesn't exist" do
      begin
        hand.move_drawn_base_to_lane(0, 1)
      rescue StandardError => e
        expect(e.message).to eq("No card to draw at location 0")
      end
    end

    it "expects a base card is moved to the first lane" do
      hand.add_drawn_card(base)
      hand.move_drawn_base_to_lane(0, 0)
      expect(hand.BaseLanes[0].base).to eq(base)
      expect(hand.drawn_cards[0]).to eq(nil)
      expect(hand.discard_pile.length).to eq(0)
    end

    it "expects a base card to replace an existing base card" do
      base1 = BaseCard.new(
        Faker::String.random(10),
        Faker::String.random(50)
      )
      base2 = BaseCard.new(
        Faker::String.random(10),
        Faker::String.random(50)
      )
      hand.add_drawn_card(base1)
      hand.add_drawn_card(base2)

      hand.move_drawn_base_to_lane(0, 0)
      expect(hand.BaseLanes[0].base).to eq(base1)
      expect(hand.drawn_cards[0]).to eq(nil)
      expect(hand.discard_pile.length).to eq(0)

      hand.move_drawn_base_to_lane(1, 0)
      expect(hand.BaseLanes[0].base).to eq(base2)
      expect(hand.drawn_cards[1]).to eq(nil)
      expect(hand.discard_pile.length).to eq(1)
    end

    it "expects bases can be added to all lanes" do
      base1 = BaseCard.new(
        Faker::String.random(10),
        Faker::String.random(50)
      )
      base2 = BaseCard.new(
        Faker::String.random(10),
        Faker::String.random(50)
      )
      base3 = BaseCard.new(
        Faker::String.random(10),
        Faker::String.random(50)
      )
      hand.add_drawn_card(base1)
      hand.add_drawn_card(base2)
      hand.add_drawn_card(base3)

      hand.move_drawn_base_to_lane(0, 0)
      expect(hand.BaseLanes[0].base).to eq(base1)
      expect(hand.drawn_cards[0]).to eq(nil)
      expect(hand.discard_pile.length).to eq(0)

      hand.move_drawn_base_to_lane(1, 1)
      expect(hand.BaseLanes[1].base).to eq(base2)
      expect(hand.drawn_cards[1]).to eq(nil)
      expect(hand.discard_pile.length).to eq(0)

      hand.move_drawn_base_to_lane(2, 2)
      expect(hand.BaseLanes[2].base).to eq(base3)
      expect(hand.drawn_cards[2]).to eq(nil)
      expect(hand.discard_pile.length).to eq(0)
    end

  end
end
