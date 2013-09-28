NICKNAMES = {
  :friends => [
    "Word Girl",
    "Turtle",
    "Cherry",
    "Three Dog",
    "Positive Polly"
    ],
  :frienemies => [
    "Scary",
    "Negative Nancy",
    "Stupid Head",
    "Dummy Pants",
    "Poop Brain"
    ]
  }

def ask(question)
  puts question
  answer = gets.chomp
  answer.to_s
end

def nickname_based_on_relationship(choice, first, last)
  nickname = NICKNAMES[choice].sample
  if first == last
    puts "#{first} #{nickname}"
  else
    puts "#{first} #{nickname} #{last}"
  end
end

name = ask("What is your name?")
name_arr = name.split(" ")
choice = ask("Are we friends or frienemies?")
choice = choice.to_sym

nickname_based_on_relationship(choice, name_arr.first, name_arr.last)

