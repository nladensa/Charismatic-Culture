require 'rails_helper.rb'

describe "the users list" do
    before(:all) do
        @users = []
        1.times{ @users << Fabricate(:user) }
    end

    feature "Blogger adds an article" do
        scenario "Blogger successfully logs in" do
            visit root_url
            click_link "Login"
            fill_in "Email", with: @users[0].email
            fill_in "Password", with: @users[0].password
            click_button "Login"
        end
    
        scenario "Blogger successfully navigates to the new articles page from the listing articles page" do
            visit articles_path
            expect(page).to have_content("Listing Articles")
            click_link "New Article"
            expect(page).to have_content("New Article")
            expect(page).to have_content("Title")
            expect(page).to have_content("Text")
        end
    
        scenario "Blogger successfully creates a new article" do
            visit new_article_path
            expect(page).to have_content("New Article")
            fill_in "Title", with: "New Capybara Article"
            fill_in "Text", with: "This is a  new Capybara article"
            click_button "Create Article"
            expect(page).to have_content("New Capybara Article")
            expect(page).to have_content("This is a new Capybara article")
        end
    end    
end