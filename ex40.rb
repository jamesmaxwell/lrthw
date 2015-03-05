cities = {
	'CA' => "San Francisco",
	'MI' => 'Detroit',
	'FL' => 'Jacksonville'
}

cities['NY'] = 'New York'
cities['OR'] = 'Portland'

def find_city(map, state)
	if map.include? state
		return map[state]
	else
		return 'Not found.'
	end
end

cities[:find] = method(:find_city)

cities.each {|key,city| puts "#{key} => #{city}"}

while true
	print "State? (Enter to quit)"
	state = gets.chomp

	break if state.empty?

	puts cities[:find].call(cities, state)
end