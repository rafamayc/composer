# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :produto do
    name "MyString"
    valor 1.5
    descricao "MyString"
    unidade "MyString"
    saldo 1.5
    ativo "MyString"
  end
end
