require 'spec_helper'

describe Coach do
  
	it "concatenates fname and lname" do
		@coach = Coach.new({:fname => "Ned", :lname => "Yost"})
		expect(@coach.fullname).to eq("Ned Yost")
	end

end
