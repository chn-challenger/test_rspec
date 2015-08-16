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

describe Hash do
  it "        Display this message if test failed" do
    Hash.new.should == {}
  end
end

(1..3).each do |i|
	describe Integer do
	  it "        Double failed" do
	    i.double == i + i
	  end
	end
end
