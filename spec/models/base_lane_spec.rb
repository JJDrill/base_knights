require "./app/models/base_lane"

describe Base_Lane do

  before(:all) do
    @lane = Base_Lane.new
  end

  let(:lane) { @lane }

  it "checks initial state" do
    expect(lane.base).to eq(nil)
    expect(lane.knights).to eq([])
  end

  it "checks add_base" do
    lane.add_base("Test Base")
    expect(lane.base).to eq("Test Base")
  end

  it "checks remove_base" do
    lane.add_base("Test Base")
    lane.add_knight("Test Knight 1", 0)
    lane.add_knight("Test Knight 2", 1)
    lane.add_knight("Test Knight 3", 2)
    expect(lane.base).to eq("Test Base")
    lane.remove_base
    expect(lane.base).to eq(nil)
    expect(lane.knights[0]).to eq(nil)
    expect(lane.knights[1]).to eq(nil)
    expect(lane.knights[2]).to eq(nil)
  end

  it "checks add knight" do
    lane.add_knight("Test Knight 1", 0)
    lane.add_knight("Test Knight 2", 1)
    lane.add_knight("Test Knight 3", 2)
    expect(lane.knights[0]).to eq("Test Knight 1")
    expect(lane.knights[1]).to eq("Test Knight 2")
    expect(lane.knights[2]).to eq("Test Knight 3")
  end

  it "checks remove knight" do
    lane.add_knight("Test Knight 1", 0)
    lane.add_knight("Test Knight 2", 1)
    lane.add_knight("Test Knight 3", 2)
    expect(lane.knights[0]).to eq("Test Knight 1")
    expect(lane.knights[1]).to eq("Test Knight 2")
    expect(lane.knights[2]).to eq("Test Knight 3")

    removed_card = lane.remove_knight(0)
    expect(lane.knights[0]).to eq(nil)
    expect(removed_card).to eq("Test Knight 1")

    removed_card = lane.remove_knight(1)
    expect(lane.knights[1]).to eq(nil)
    expect(removed_card).to eq("Test Knight 2")

    removed_card = lane.remove_knight(2)
    expect(lane.knights[2]).to eq(nil)
    expect(removed_card).to eq("Test Knight 3")
  end
end
