# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dependent do
    name "MyString"
    old "MyString"
    father nil
  end
end
