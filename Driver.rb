class Driver

	attr_reader :loc, :books, :dinos, :classes
	attr_writer :loc, :books, :dinos, :classes
	def initialize(loc, books, dinos, classes)
		@loc = loc
		@books = books
		@dinos = dinos
		@classes = classes
	end
end