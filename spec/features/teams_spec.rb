require 'spec_helper'

describe "Team" do

	before(:all) do
		team = Team.create({:nickname => "Bombers", :city => "Omaha"})
	end
	
	it "displays the text roster" do
  	visit ("/teams/1")
  	expect(page).to have_content("Roster")
	end

	it "has a th tag with AVG" do 
		visit ("/teams/1")
		expect(page).to have_content("AVG")
	end

end