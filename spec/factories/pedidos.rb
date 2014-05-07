# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pedido do
    dataaprovacao "2014-05-06"
    datapedido "2014-05-06"
    cliente nil
    tipo_pag nil
    for_pags nil
    valortotal 1.5
    statuspedido "MyString"
  end
end
