 # Define points for each room
ROOM_POINTS = [5, 10, 15]


total_points = 0

# Welcome message
puts "Welcome to the Adventure Game!"
puts "You have #{total_points} points."

# Main game loop
loop do
  # Display menu options
  puts "Choose a room (1-3) to enter or 'exit' to end the game:"

  # Prompt player for input
  choice = gets.chomp.downcase

  # Check if player chooses to exit
  break if choice == 'exit'

  # Convert choice to an integer
  room_number = choice.to_i

  # Check if choice is valid
  if room_number.between?(1, 3)
    # Add points for the chosen room to total points
    points = ROOM_POINTS[room_number - 1]
    total_points += points

    # Display room entry message and points earned
    puts "You entered Room #{room_number} and earned #{points} points."
    puts "Total points: #{total_points}"
  else
    # Invalid choice
    puts "Invalid choice. Please enter a number between 1 and 3."
  end
end

# Game over message with total points
puts "Game over! You collected a total of #{total_points} points."
