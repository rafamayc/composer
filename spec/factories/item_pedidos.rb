# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item_pedido do
    quantidade "9.99"
    produto nil
    valor_unitario "9.99"
    valor_total "9.99"
  end
end
