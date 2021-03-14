# frozen_string_literal: true

require_relative 'lib/array'

context '#my_each' do
 let(:arr) { ['d', 'f', 'B'] }

  it 'should return an result' do

    res = []

    arr.my_each { |arr_i| res.push(arr_i) }
    expect(res).to match_array(arr)
  end

  it 'should return an result' do

    res = arr.my_map(&:upcase)
    expect(res).to contain_exactly('D', 'F', 'B')
  end

  it 'should return an result' do

    res = arr.my_map(&:downcase)
    expect(res).to contain_exactly('d', 'f', 'b')
  end

  it 'should return an result' do

    let(:arr) { ['d', 'f', 'B'] }
    let(:arr) { ['d', 'f', 'b'] }

    res = arr1.my_select { |arr_i| arr2.include?(arr_i) }
    expect(res).to contain_exactly('d', 'f')
  end
end
