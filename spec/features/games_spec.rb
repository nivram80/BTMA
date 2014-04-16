require 'spec_helper'

describe "Team" do

	it "click on Add Game that goes to add game view" do
  	visit games_path
  	click_link('Add Game')
  	expect(page).to have_content("New Game")
	end

end