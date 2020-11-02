require 'rails_helper'

RSpec.feature "on index page" do 
  before do 
    visit tweets_path
  end
  scenario "user can see tweets" do 
    expect(page).to have_css('.tweets')
  end
  scenario "the route is /tweets" do 
    expect(page).to have_current_path(tweets_path)
  end
  scenario "user can click on button to take them to new tweet page" do 
    click_on "New Tweet"
    expect(page).to have_current_path(new_tweet_path)
  end
end