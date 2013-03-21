require_relative '../quicksort/quicksort'

module BinarySearch
	def self.iterative(array, element, min_index = 0, max_index = array.size - 1)
		while(max_index >= min_index)
			mid_index = (min_index + max_index) / 2
			if array[mid_index] < element
				min_index = mid_index + 1
			elsif array[mid_index] > element
				max_index = mid_index - 1
			else
				return mid_index
			end
		end
		return nil
	end

	def self.recursive(array, element, min_index = 0, max_index = array.size - 1)
		if max_index < min_index
			return nil
		else
			mid_index = (min_index + max_index) / 2
			if array[mid_index] > element
				return recursive(array, element, min_index, mid_index - 1)
			elsif array[mid_index] < element
				return recursive(array, element, mid_index + 1, max_index)
			else
				return mid_index
			end
		end
	end
end