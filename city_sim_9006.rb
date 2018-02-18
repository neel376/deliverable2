require './Location'
require './Driver'
require './Methods'

class City


Downtown = Location.new(nil, nil)
Monroeville = Location.new(nil, nil)


Monroeville.loc = 'Monroeville'
Monroeville.routes = nil

Downtown.loc = 'Downtown'
Downtown.routes = nil


srand(445)
driver = Driver.new(nil, 0, 0 , 1)

i = 1

while i < 6
	
	driver = Methods.newDriver(driver) #creates new driver
	currentLocation = driver.loc.loc 
	Methods.checkLocation(driver)

	until (currentLocation == Monroeville.loc || currentLocation == Downtown.loc)
		
		arr = Methods.moveLocations(driver)
		Methods.checkLocation(driver)

		puts "Driver #{i} heading from #{currentLocation} to #{driver.loc.loc} via #{arr[1]}"

		currentLocation = driver.loc.loc

	
	end

	Methods.printItems(driver, i)
	puts ""
	i += 1
end






end