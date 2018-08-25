require './app/models/BaseCard'
require 'Faker'

describe BaseCard do

  before(:all) do
    @fake_name = Faker::String.random(10)
    @fake_description = Faker::String.random(50)
  end

  let(:fake_name) { @fake_name }
  let(:fake_description) { @fake_description }

  it "checks a base card initialization" do
    base = BaseCard.new(fake_name, fake_description)
    expect(base.name).to eq(fake_name)
    expect(base.description).to eq(fake_description)
  end
end
