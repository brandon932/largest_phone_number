def large_number(numbers)
  numbers.max_by do |num|
    num.delete('-')
    num.each_char.map(&:to_i).inject(:+)
  end
end
puts large_number([
    '324-345-1234',
    '234-234-9999',
    '999-333-9333',
    'vvvvvvvvvvvv'])

