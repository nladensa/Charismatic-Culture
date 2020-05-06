require 'rails_helper.rb'

describe "the articles list" do
    before(:all) do
        @articles = []
        3.times{ @articles << Fabricate(:article) }
    end
    
    feature "Blogger deletes an article" do
        scenario "Blogger successfully deletes an article from the listing articles page" do
            visit articles_path
            expect(page).to have_content("Listing Articles")
            find('tr', text: @articles[0].title).click_link("Destroy")
        end
        
        scenario
    end
end