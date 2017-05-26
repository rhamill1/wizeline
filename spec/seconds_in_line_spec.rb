require './scripts/seconds_in_line.rb'


describe 'seconds_in_line(2, [1, 1, 2, 3])' do
  it 'returns the amount of seconds a customer waits in line' do
    expect(seconds_in_line(2, [1, 1, 2, 3])).to eq 5
  end
end

describe 'seconds_in_line(1, [1, 1, 2, 3])' do
  it 'returns the amount of seconds a customer waits in line' do
    expect(seconds_in_line(1, [1, 1, 2, 3])).to eq 2
  end
end
