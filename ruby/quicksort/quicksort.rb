require_relative '../patches/patches'

module Quicksort

	def self.sort(array)
		# If the Array is trivially sorted by having one or no elements, return it
		if array.size <= 1
			return array
		end

		# Create arrays to hold the left and right unsorted subsets
		lesser =  Array.new
		greater = Array.new

		# Choose a pivot in the middle of the array
		pivot_index = array.size / 2
		pivot = array[pivot_index]

		# Sort each item smaller than the pivot into the lesser bucket, and each
		# item bigger than the pivot into the greater bucket
		array.each_with_index do |item, index|
			if index == pivot_index
				next
			end

			if item <= pivot
				lesser << item
			else
				greater << item
			end
		end

		# Sort the left and right buckets recursively and put the pivot in the middle
		return sort(lesser) + [pivot] + sort(greater)
	end
end