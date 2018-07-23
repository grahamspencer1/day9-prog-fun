trains = [
  {train: "72C", frequency_in_minutes: 15, direction: "north"},
  {train: "72D", frequency_in_minutes: 15, direction: "south"},
  {train: "610", frequency_in_minutes: 5, direction: "north"},
  {train: "611", frequency_in_minutes: 5, direction: "south"},
  {train: "80A", frequency_in_minutes: 30, direction: "east"},
  {train: "80B", frequency_in_minutes: 30, direction: "west"},
  {train: "110", frequency_in_minutes: 15, direction: "north"},
  {train: "111", frequency_in_minutes: 15, direction: "south"}
]

# puts train_111_dir = trains.last[:direction] #south
# puts train_80B_freq = trains[-3][:frequency_in_minutes] #30
# puts train_610_dir = trains[2][:direction] #north
#
# northbound = [
#   {train: "72C", frequency_in_minutes: 15, direction: "north"},
#   {train: "610", frequency_in_minutes: 5, direction: "north"},
#   {train: "110", frequency_in_minutes: 15, direction: "north"}
# ]
#
# eastbound = [
#   {train: "80A", frequency_in_minutes: 30, direction: "east"}
# ]

northbound = []
eastbound = []

trains.each do |train|
  if train[:direction] == "north"
    northbound.push(train[:train])
  elsif train[:direction] == "east"
    eastbound.push(train[:train])
  end
end

puts "Trains heading north: #{northbound}"
puts "Trains heading east: #{eastbound}"

trains[7][:first_departure_time] = 12
puts trains
