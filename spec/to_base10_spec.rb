require('rspec')
require('to_base10')

describe :to_base10 do
  # "Converts a string of hexadecimal digits into a decimal number"

  it 'returns 0 for ("0", 2)' do
    expect(to_base10("0", 2)).to eq(0)
  end

  it 'returns 3 for ("11", 2)' do
    expect(to_base10("11", 2)).to eq(3)
  end

  it 'return 17 for ("11", 2)' do
    expect(to_base10('11', 16)).to eq(17)
  end

  it 'returns 7 for ("21", 3) ' do
    expect(to_base10('21', 3)).to eq(7)
  end

  it 'returns 9 for ("11", 8)' do
    expect(to_base10("11", 8)).to eq(9)
  end

  it 'returns 9216505400582 for ("OB1Kenobi", 28)' do
    expect(to_base10("OB1Kenobi", 28)).to eq(9216505400582)
  end

  it 'returns 365820863932851004719410317962867433713160450667 for ("HexadecimalIsBoringThisIsBetter", 35)' do
    expect(to_base10("HexadecimalIsBoringThisIsBetter", 35)).to eq(365820863932851004719410317962867433713160450667)
  end

  it 'returns 996374449424979944479159007644463337488042736 for ("MarkAndJustinConvertEverything", 32)' do
    expect(to_base10("MarkAndJustinConvertEverything", 32)).to eq(996374449424979944479159007644463337488042736)
  end

end


