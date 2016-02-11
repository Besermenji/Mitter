require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a valid factory' do
    expect(FactoryGirl.create(:user)).to be_valid
  end

  it 'is invalid without first name' do
    expect(FactoryGirl.build(:user, first_name: nil)).not_to be_valid
  end

  it 'is invalid without last name' do
    expect(FactoryGirl.build(:user, last_name: nil)).not_to be_valid
  end

  it 'is invalid without birth year' do
    expect(FactoryGirl.build(:user, birth_date: nil)).not_to be_valid
  end

  it 'has many mini tweets' do
    expect(FactoryGirl.create(:user)).to have_many(:meets)
  end

  it 'returns full name' do
    user = FactoryGirl.build(:user,
                             email: 'test@test.test',
                             password: 'test1234',
                             first_name: 'Imenko',
                             last_name: 'Prezimenkovic',
                             birth_date: (Date.current - 12.years))
    expect(user.name).to eq 'Imenko Prezimenkovic'
  end
end
