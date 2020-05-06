require 'rails_helper.rb'

describe "the articles list" do
    before(:all) do
        @articles = []
        3.times{ @articles << Fabricate(:article) }
    end

    feature "Reader adds a comment" do
        scenario "Reader successfully navigates to the article from the listing articles page" do
            visit articles_path
            expect(page).to have_content("Listing Articles")
            expect(page).to have_content(@articles[1].title)
            expect(page).to have_content(@articles[1].text)
            find('tr', text: @articles[0].title).click_link("Show")
        end
    
        scenario "Reader successfully creates a new comment" do
            expect(page).to have_content(@articles[0].title)
            expect(page).to have_content(@articles[0].text)
            fill_in "Commenter", with: "Reader"
            fill_in "Body", with: "This is a new capybara comment."
            click_button "Create Comment"
            expect(page).to have_content("Reader")
            expect(page).to have_content("This is a new capybara comment.")
        end
    end
end