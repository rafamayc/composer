# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cliente do
    name "MyString"
    ativo "MyString"
    logradouro "MyString"
    numero "MyString"
    complemento "MyString"
    bairro "MyString"
    estado "MyString"
    cidade "MyString"
    cep "MyString"
    cnpj_cpf "MyString"
    tipocad "MyString"
    contato "MyString"
    telefone "MyString"
    email "MyString"
    limite 1.5
  end
end
