require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a valid factory' do
    FactoryGirl.create(:user).should be_valid
  end

  it 'is invalid without first name' do
    FactoryGirl.buld(:user, first_name: nil).should_not be_valid
  end

  it 'is invalid without last name' do
    FactoryGirl.buld(:user, last_name: nil).should_not be_valid
  end

  it 'is invalid without birth year' do
    FactoryGirl.build(:user, birth_year: nil).should_not be_valid
  end
end
