puts "How old are you?"
age = gets.chomp

puts "Do you ever plan on having children?"
children = gets.chomp.downcase

if children == "yes" || children == "y"
  puts "What names will you give your children?"
  baby_names = gets.chomp
end

if age.to_i > 30
  puts "Are you married?"
  married_status = gets.chomp.downcase
  if married_status == "no" || married_status == "n"
    puts "Do you ever plan on getting married?"
    potential_wifey = gets.chomp.downcase
      if potential_wifey == "yes" || potential_wifey == "y"
        puts "Will you marry me??????!!!!!!".upcase
      end
  end
end

