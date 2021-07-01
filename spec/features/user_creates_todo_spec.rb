require "rails_helper"

feature "User creates todo" do 
	scenario "" do
		sign_in

		click_on "Add a new todo"
		fill_in "Title", with: "Choose Pokemon"
		click_on "Submit"

		expect(page).to have_css '.todos li', text: "Choose Pokemon"

	end
end
