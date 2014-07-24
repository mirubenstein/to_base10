require('rspec')
require('hexadecimal')

describe :hexadecimal do
  # "Converts a string of hexadecimal digits into a decimal number"
  it 'returns 10 for A' do
    expect(hexadecimal("A")).to eq(10)
  end

  it 'returns 15 for F' do
    expect(hexadecimal('F')).to eq(15)
  end

  it 'returns 16 for 10' do
    expect(hexadecimal('10')).to eq(16)
  end

  it 'returns 255 for FF' do
    expect(hexadecimal('ff')).to eq(255)
  end

  it 'returns 123456789 for 75BCD15' do
    expect(hexadecimal('75BCD15')).to eq(123456789)
  end

end


