require 'rails_helper'

RSpec.describe Meet, type: :model do
  it 'has a valid factory' do
    expect(FactoryGirl.create(:meet)).to be_valid
  end

  it 'is invalid without content' do
    expect(FactoryGirl.build(:meet, content: nil)).not_to be_valid
  end

  it 'is invalid without token' do
    expect(FactoryGirl.build(:meet, token: nil)).not_to be_valid
  end

  it 'content is less than 160 characters' do
    should validate_length_of(:content)
      .is_at_most(160)
  end

  it 'token is unique' do
    should validate_uniqueness_of(:token).case_insensitive
  end

  it 'belongs to user' do
    expect(FactoryGirl.create(:meet)).to belong_to(:user)
  end
end
