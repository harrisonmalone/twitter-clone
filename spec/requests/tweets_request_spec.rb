require 'rails_helper'

RSpec.describe "Tweets", type: :request do
  context "#index" do
    it "should respond with a 200 status code" do
      get tweets_path
      expect(response).to have_http_status(200)
    end
  end

  context "#create" do
    it "redirects to #index" do 
      post tweets_path, params: { tweet: { body: "a new tweet!" } }
      expect(response).to redirect_to(tweets_path)
    end

    it "on validation failure it renders the correct number of errors" do 
      post tweets_path, params: { tweet: { body: "" } }
      expect(response.body).to include("1 error prohibited this tweet from being saved")
    end
  end
end