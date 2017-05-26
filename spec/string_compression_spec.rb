require './scripts/string_compression.rb'


describe 'string_compression("aaabccccdeff")' do
  it 'it returns a compressed version of the entered string. When multiple consecutive occurences of the same character occur, the sub-string is shortened to the letter followed by a count of occurances' do
    expect(string_compression('aaabccccdeff')).to eq 'a3bc4def2'
  end
end
