require 'pry'
array = ["Jonathan", "Alicia", "Phil"]
puts array.to_s

#two more names

array << "Jackie" << "Marc"

puts array.to_s

array.push("Steve", "Andrew")

puts array.to_s

array.unshift("First", "Second")

puts array.to_s

array.shift.to_s

puts array.to_s

array.pop.to_s

puts array.to_s

puts array.count.to_s

array.each do |element|
  p element
end

array.each_with_index do |element, index|
  puts element + " at " + index.to_s
end

array.map! do |element|
  element + "'s"
end

puts array.shuffle.to_s

puts array.include?("Sally")