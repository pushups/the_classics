class Array
	def swap!(index_one, index_two)
		self[index_one], self[index_two] = self[index_two], self[index_one]
		self
	end
end