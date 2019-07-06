require 'rails_helper'

describe "As a user" do
  describe "When I visit '/'" do
    describe "and I enter 'tiger' in the search box and click 'search'" do
      it "sends me to /search with 'q=tiger' in the parameters" do
        visit '/'

        fill_in :q, with: "tiger"

        click_on "Search"

        expect(current_path).to eq("/search")

        expect(page).to have_content("Search Page")

      end
    end
  end
end
