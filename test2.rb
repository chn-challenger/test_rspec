class Integer
	def factorial
		if self <0
			return nil
		end
		if self == 0 
			return 1
		else
			return self*(self-1).factorial
		end
	end

	def double
		return self * 2
	end
end

#working
describe Integer do
	before do
		@double = 5
	end
	it "Double failed gave #{2.double} should be 5" do
		2.double.should == @double
	end
end


=begin
#not working
describe Integer do
	(1..4).each do |i|
		before do
			@double = i*2 
		end
		it " #{i} Double failed test2, #{i.double} != #{@double}" do
			i.double.should == @double
		end
	end
end
=end
