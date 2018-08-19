require "./app/models/base_lane"

describe Base_Lane do

  before(:each) do
    @lane = Base_Lane.new
    @fake_base = Base_Card.new(
      Faker::String.random(20),
      Faker::String.random(50)
    )
    @fake_hero_1 = Hero_Card.new(
      Faker::StarWars.character,
      Faker::StarWars.quote,
      Faker::Number.number(2),
      Faker::Number.number(2)
    )
    @fake_hero_2 = Hero_Card.new(
      Faker::StarWars.character,
      Faker::StarWars.quote,
      Faker::Number.number(2),
      Faker::Number.number(2)
    )
    @fake_hero_3 = Hero_Card.new(
      Faker::StarWars.character,
      Faker::StarWars.quote,
      Faker::Number.number(2),
      Faker::Number.number(2)
    )
  end

  let(:lane) { @lane }
  let(:fake_base) { @fake_base }
  let(:fake_hero_1) { @fake_hero_1 }
  let(:fake_hero_2) { @fake_hero_2 }
  let(:fake_hero_3) { @fake_hero_3 }

  it "checks initial state" do
    expect(lane.base).to eq(nil)
    expect(lane.knights).to eq([])
  end

  context "base validations" do

    it "checks add_base" do
      lane.add_base(fake_base)
      expect(lane.base).to eq(fake_base)
    end

    it "checks remove_base" do
      lane.add_base(fake_base)
      expect(lane.base).to eq(fake_base)
      lane.add_knight(fake_hero_1, 0)
      lane.add_knight(fake_hero_2, 1)
      lane.add_knight(fake_hero_3, 2)

      lane.remove_base
      expect(lane.base).to eq(nil)
      expect(lane.knights[0]).to eq(nil)
      expect(lane.knights[1]).to eq(nil)
      expect(lane.knights[2]).to eq(nil)
    end
  end

  context "hero validations" do

    it "checks add knight" do
      lane.add_knight(fake_hero_1, 0)
      lane.add_knight(fake_hero_2, 1)
      lane.add_knight(fake_hero_3, 2)
      expect(lane.knights[0]).to eq(fake_hero_1)
      expect(lane.knights[1]).to eq(fake_hero_2)
      expect(lane.knights[2]).to eq(fake_hero_3)
    end

    it "checks remove knight" do
      lane.add_knight(fake_hero_1, 0)
      lane.add_knight(fake_hero_2, 1)
      lane.add_knight(fake_hero_3, 2)
      expect(lane.knights[0]).to eq(fake_hero_1)
      expect(lane.knights[1]).to eq(fake_hero_2)
      expect(lane.knights[2]).to eq(fake_hero_3)

      removed_card = lane.remove_knight(0)
      expect(lane.knights[0]).to eq(nil)
      expect(removed_card).to eq(fake_hero_1)
      expect(removed_card.is_a?(Hero_Card)).to eq(true)

      removed_card = lane.remove_knight(1)
      expect(lane.knights[1]).to eq(nil)
      expect(removed_card).to eq(fake_hero_2)
      expect(removed_card.is_a?(Hero_Card)).to eq(true)

      removed_card = lane.remove_knight(2)
      expect(lane.knights[2]).to eq(nil)
      expect(removed_card).to eq(fake_hero_3)
      expect(removed_card.is_a?(Hero_Card)).to eq(true)
    end
  end
end
