require 'rails_helper.rb'

feature"User adds an article" do 
    scenario "User succesfully navigates to the new articles page from the listing articles page" do

        visit articles_new_path
        click_link "Article List"
        expect(page).to have_content("Listing article")
        click_link "New article"
        expect(page).to have_content("New article")
        expect(page).to have_field("Title")
        expect(page).to have_field("Text")
    end
    
    scenario "User succesfully creates a new article" do
        visit articles_new_path
        click_link "Article List"
        expect(page).to have_content("Listing article")
        click_link "New article"
        fill_in "Title", with: "New Capybara Article"
        fill_in "Text", with: "This is a new Capybara article"
        click_button "Save Article"
        expect(page).to have_content("New Capybara Article")
        expect(page).to have_content("This is a new Capybara article")
    end
    

end
