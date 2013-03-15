require 'spec_helper'

describe Quicksort do
	it "should sort an unsorted array" do
		unsorted_array = [1,3,2,4,5,1,2,1,2,5,7,8]
		Quicksort.sort(unsorted_array).should eq([1,1,1,2,2,2,3,4,5,5,7,8])
	end

	it "should return an empty array when given an empty array" do
		Quicksort.sort([]).should eq([])
	end

	it "should return a single element array when given a single element" do
		Quicksort.sort([8]).should eq([8])
	end

	it "should sort pre-sorted arrays" do
		Quicksort.sort([1,2,3]).should eq([1,2,3])
	end

	describe "sorting different types" do
		it "should sort floats" do
			Quicksort.sort([1.2,4.2,-1.3,3.1,4.1,59,88,2.1]).should eq([-1.3, 1.2, 2.1, 3.1,4.1,4.2,59,88])
		end

		it "should sort words in lexical order" do
			words = ["a", "b", "c", "d", "e", "f", "a", "a", "c", "cat", "mouse", "zebra", "horse-zebra", "zebra-horse"]
			Quicksort.sort(words).should eq(["a", "a", "a", "b", "c", "c", "cat", "d", "e", "f", "horse-zebra", "mouse", "zebra", "zebra-horse"])
		end
	end
end