require 'benchmark'

def generate_example_array(num_elements)
	missing_element = rand(1..num_elements)
	if missing_element
		example_array = (1..missing_element - 1).to_a + (missing_element..num_elements - 1).map { |x| x + 1  }
	else
		[]
	end
	return {:example_array => example_array, :missing_element => missing_element}
end

def search(array, min_index = 0, max_index = array.size - 1)	
	if max_index >= 0 && max_index - min_index < 0
		return array[max_index] + 1
	elsif max_index < 0 && max_index - min_index < 0
		return array[min_index] - 1
	end

	mid_index = (min_index + max_index) / 2

	if array[mid_index] - mid_index == 2
		return search(array, min_index, mid_index - 1)
	elsif array[mid_index] - mid_index == 1
		return search(array, mid_index + 1, max_index)
	end
end

errors = 0
execution_times = []
search_answer = nil

2.upto(50000) do |i|	

	example = generate_example_array(i)

	time = Benchmark.realtime do
		search_answer = search(example[:example_array])
	end

	execution_times << time

	if search_answer != example[:missing_element]
		errors += 1
	end
end

f = File.new('benchmarks.data', 'w')

execution_times.each do |x|
	f.write(x * 1000)
	f.write("\n")
end

f.close




