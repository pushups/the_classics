require 'spec_helper'

describe BinarySearch do
	it "should find the index of the element if it exists" do
		source_array = [1,2,3,5,6,9,10,15]
		BinarySearch.iterative(source_array, 5).should eq(3)
		BinarySearch.recursive(source_array, 5).should eq(3)
	end

	it "should return nil for an empty array" do
		BinarySearch.iterative([], 120).should be_nil
		BinarySearch.recursive([], 120).should be_nil
	end

	it "should return nil if the element is not present in the array" do
		BinarySearch.iterative([1,2,3], 5).should be_nil
		BinarySearch.recursive([1,2,3], 5).should be_nil
	end
end