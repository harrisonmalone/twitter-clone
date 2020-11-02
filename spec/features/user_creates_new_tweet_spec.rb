require 'rails_helper'

RSpec.feature "on new page" do
  before do 
    visit new_tweet_path
  end
  scenario "the route is /tweets/new" do 
    expect(page).to have_current_path(new_tweet_path)
  end
  scenario "user can create a new tweet and is taken to the index page" do 
    tweet_body = 'Testing with capybara is really cool!'
    fill_in "Body", with: tweet_body
    click_on "Create Tweet"
    expect(page).to have_current_path(tweets_path)
    expect(page).to have_css("li", text: tweet_body)
  end
end
