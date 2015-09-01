require 'rails_helper'
RSpec.feature "adding tests" do 

	scenario "allow a user to add a test" do
		visit new_word_path

		fill_in "Palavra1", with: "joao"
		fill_in "Palavra2", with: "luis"

		click_on("Create Test")

		expect(page).to have_content("joao")
		expect(page).to have_content("luis")
		expect(page).to have_content(false)

	end

end