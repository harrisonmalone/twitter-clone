require 'rails_helper'

RSpec.describe Tweet, type: :model do
  subject do 
    Tweet.new(body: "Awesome tweet!")
  end

  it "is valid with valid attributes" do 
    expect(subject).to be_valid
  end

  it "is invalid without a body" do 
    subject.body = nil
    expect(subject).to_not be_valid
  end

  it "is invalid if the body is longer than 280 characters in length" do 
    body = "a" * 281
    subject.body = body
    expect(subject).to_not be_valid
  end
end
