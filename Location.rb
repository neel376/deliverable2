class Location

	attr_reader :loc, :routes
	attr_writer :loc, :routes
	def initialize(loc, routes)
		@loc = loc
		@routes = routes
		
	end
end