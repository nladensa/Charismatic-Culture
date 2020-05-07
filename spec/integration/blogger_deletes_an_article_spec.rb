require 'rails_helper.rb'

describe "the articles list" do
    before(:all) do
        @articles = []
        3.times{ @articles << Fabricate.build(:article) }
    end
    
    feature "Blogger deletes an article" do
        scenario "Blogger successfully deletes an article from the listing articles page" do
            visit articles_path
            expect(page).to have_content("Listing Articles")
            expect(page).to have_content(@articles[0].title)
            expect(page).to have_content(@articles[0].text)
            title = @articles[0].title
            text = @articles[0].text
            delete = first(:link, "Destroy", minimum: 1)
            accept_confirm do
                click_link delete
            end
            expect(page).to have_no_content(title)
            expect(page).to have_no_content(text)
        end
    end
end