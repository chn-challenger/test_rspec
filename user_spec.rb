class User
  def in_role?(role)
  	true
  end
end

describe User do
	
	it "should be in any roles assigned to it" do
		user = User.new
		user.should be_in_role("assigned role")
  	end

end