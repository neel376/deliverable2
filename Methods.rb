require './Location'
require './Driver'


class Methods


Cathedral = Location.new(nil, nil)
Hospital = Location.new(nil, nil)
Hillman = Location.new(nil, nil)
Museum = Location.new(nil, nil)
Downtown = Location.new(nil, nil)
Monroeville = Location.new(nil, nil)

Cathedral.loc = 'Cathedral'
Cathedral.routes = [[Museum,'Bar St.'], [Monroeville,'Fourth Ave.']]

Hospital.loc = 'Hospital'
Hospital.routes = [[Hillman,'Foo St.'], [Cathedral,'Fourth Ave.']]


Hillman.loc = 'Hillman'
Hillman.routes = [[Hospital,'Foo St.'], [Downtown,'Fifth Ave.']]

Museum.loc = 'Museum'
Museum.routes = [[Cathedral,'Bar St'], [Hillman,'Fifth Ave.']]


Monroeville.loc = 'Monroeville'
Monroeville.routes = nil

Downtown.loc = 'Downtown'
Downtown.routes = nil

def self.newDriver(driver)

	num = rand(1..4)
	
	driver = Driver.new(Cathedral, 0, 0 , 1) if num == 1

	driver = Driver.new(Hospital, 0, 0 , 1) if num == 2

	driver = Driver.new(Hillman, 0, 0 , 1) if num == 3

 	driver = Driver.new(Museum, 0, 0 , 1) if num == 4 

 	return driver


end

def self.moveLocations(driver)
	arr = []
	randNum = rand(1..2)
	
	if (randNum == 1)
		route = driver.loc.routes[0][1]
		driver.loc = driver.loc.routes[0][0] 
		arr = [driver.loc, route]
	end

    if randNum == 2
    	route = driver.loc.routes[1][1]
    	driver.loc = driver.loc.routes[1][0]
    	arr = [driver.loc, route]
    end

	return arr
end


def self.checkLocation(driver)

	driver.books += 1 if driver.loc.loc == 'Hillman'
	
	driver.dinos += 1 if driver.loc.loc == 'Museum'
	
	driver.classes *= 2 if driver.loc.loc == 'Cathedral'
	
end

def self.printItems(driver, i)
	puts "Driver #{i} obtained #{driver.books} books" if(driver.books > 1 || driver.books == 0)
	puts "Driver #{i} obtained #{driver.books} book" if(driver.books == 1)

	puts "Driver #{i} obtained #{driver.dinos} dinosaur toys" if(driver.dinos > 1 || driver.dinos == 0)
	puts "Driver #{i} obtained #{driver.dinos} dinosaur toy" if(driver.dinos == 1)

	puts "Driver #{i} attended #{driver.classes} classes" if(driver.classes > 1)
	puts "Driver #{i} attended #{driver.classes} class" if(driver.classes == 1)
	
end

end