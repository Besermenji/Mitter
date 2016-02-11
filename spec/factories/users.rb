FactoryGirl.define do
  factory :user do |f|
    f.email 'te@st.com'
    f.password 'test1234'
    f.first_name 'Tester'
    f.last_name 'Testor'
    f.birth_year { 21.years.ago }
  end
end
