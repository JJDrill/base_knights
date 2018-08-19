require './app/models/hero_card'
require 'Faker'

describe Hero_Card do

  before(:all) do
    @fake_name = Faker::StarWars.character
    @fake_description = Faker::StarWars.quote
    @fake_attack = Faker::Number.number(2)
    @fake_defense = Faker::Number.number(2)
  end

  let(:fake_name) { @fake_name }
  let(:fake_description) { @fake_description }
  let(:fake_attack) { @fake_attack }
  let(:fake_defense) { @fake_defense }

  it "checks a new hero card initialize" do
    @hero = Hero_Card.new(fake_name, fake_description, fake_attack, fake_defense)
    expect(@hero.name).to eq(fake_name)
    expect(@hero.description).to eq(fake_description)
    expect(@hero.attack).to eq(fake_attack)
    expect(@hero.defense).to eq(fake_defense)
  end
end
