def largest_phone_number(numbers)
  comparison=0
  largest_number = 0
  numbers.each do |num|
    num = "#{num}".delete('-')
    digets = num.split(%r{\s*})
    if digets.map(&:to_i).inject(:+) >= comparison
      comparison = digets.map(&:to_i).inject(:+)
      largest_number = num
    end
  end
  largest_number.insert(3, '-').insert(7, '-')
end
puts largest_phone_number([
  '555-555-5555',
  '303-999-9999',
  '111-111-1111',
  '555-555-5456',
  '222-121-2121',
  '304-999-9998'])
#this is a test 
