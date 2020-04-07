Given("I am on the home page") do
  visit root_path
  #pending # Write code here that turns the phrase above into concrete actions
end

When("I click on the {string} link") do |string|
    click_link string
  #pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be on the {string} page") do |string|
  expect(page).to have_content(string)
  #pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see the {string} field") do |string|
  expect(page).to have_field(string)
  #pending # Write code here that turns the phrase above into concrete actions
end