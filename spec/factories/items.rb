# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    pedido nil
    produto nil
    quantity "9.99"
    price "9.99"
  end
end
