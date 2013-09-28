puts "How old are you?"
age = gets.chomp.to_i

if age < 18
  puts "OH I GOTTA GO BYE"
else
  puts "Do you ever plan on having children?"
  children = gets.chomp.downcase
  if children == "yes" || children == "y"
    puts "How many kids?"
    child_num = gets.chomp.to_i
    puts "What names will you give your children?"
    1.upto child_num do
      baby_names = gets.chomp
    end
  end
  if age > 30
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
end

