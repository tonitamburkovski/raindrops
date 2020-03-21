RSpec.describe Raindrops do

  it "has a version number" do
    expect(Raindrops::VERSION).not_to be nil
  end

  it "if devided by 3 is Pling" do
    rain_drop = Raindrops::Drop.new(3)
    expect(rain_drop.factor).to eq('Pling')
  end

  it "if devided by 5 is Plang" do
    rain_drop = Raindrops::Drop.new(5)
    expect(rain_drop.factor).to eq('Plang')
  end

  it "if devided by 7 is Plong" do
    rain_drop = Raindrops::Drop.new(7)
    expect(rain_drop.factor).to eq('Plong')
  end

  it "if devided by 3 & 5 is PlingPlang" do
    rain_drop = Raindrops::Drop.new(15)
    expect(rain_drop.factor).to eq('PlingPlang')
  end

  it "if devided by 3 & 7 is PlingPlong" do
    rain_drop = Raindrops::Drop.new(21)
    expect(rain_drop.factor).to eq('PlingPlong')
  end

  it "if devided by 5 & 7 is PlangPlong" do
    rain_drop = Raindrops::Drop.new(35)
    expect(rain_drop.factor).to eq('PlangPlong')
  end

  it "if devided by 3, 5 & 7 is PlingPlangPlong" do
    rain_drop = Raindrops::Drop.new(105)
    expect(rain_drop.factor).to eq('PlingPlangPlong')
  end

  it "if not devided by 3, 5 or 7 return the digit" do
    rain_drop = Raindrops::Drop.new(8)
    expect(rain_drop.factor).to eq('8')
  end

end