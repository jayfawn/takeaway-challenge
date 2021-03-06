require 'menu'

describe Menu do

  subject(:menu) { described_class.new(dishes) }

  let(:dishes) do
    {
      starter: 1.75,
      main: 5.00,
      sides: 2.50,
      sweets: 4.20
    }
  end

  it "should have a list of dishes with prices" do
    expect(menu.dishes).to eq(dishes)
  end

  it "should allow to view the menu with dishes and prices" do
    displayed_menu = "Starter £1.75, Main £5.00, Sides £2.50, Sweets £4.20"
    expect(menu.view).to eq(displayed_menu)
  end

  it 'says if the dish is on the menu' do
    expect(menu.has_dish?(:main)).to be true
  end

  it 'says if the dish is not on the menu' do
    expect(menu.has_dish?(:wine)).to be false
  end

  it 'calculates a price' do
    expect(menu.price(:chicken)).to eq(dishes[:chicken])
  end
end
