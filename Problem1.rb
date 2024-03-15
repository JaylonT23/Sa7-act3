require 'csv'

# Initialize an empty array to store the data
data = []

# Open the CSV file
CSV.foreach('data.csv', headers: true) do |row|
  # Convert each row into a hash
  data << row.to_h
end

# Print the array of hashes
puts data.inspect
