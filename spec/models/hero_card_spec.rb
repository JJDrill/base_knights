require './app/models/hero_card'

describe Hero_Card do

  it "checks a new hero card initialize" do
    @hero = Hero_Card.new("HeroName", "Hero Description", 123, 543)
    # expect(@hero.name).to eq("HeroName")
  end
end
