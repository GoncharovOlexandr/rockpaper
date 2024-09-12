choices = ["rock", "scissors", "paper"]
def who_wins(player, computer)
  if player == computer
    "draw"
  elsif (player == "rock" && computer == "scissors") ||
    (player == "scissors" && computer == "paper") ||
    (player == "paper" && computer == "rock")
    "you won"
  else
    "you lost"
  end
end

puts ""
puts "Goncharov Olexandr CS31"
puts "Choose an option:"
puts "1 - rock"
puts "2 - scissors"
puts "3 - paper"
puts "your choice:"
pl_input = gets.chomp

if ["1", "2", "3"].include?(pl_input)
  player = choices[pl_input.to_i - 1]
  computer = choices.sample
  puts "your choice: #{player}"
  puts "bot chose: #{computer}"
  result = who_wins(player, computer)
  puts result
else
  puts "try again"
end
