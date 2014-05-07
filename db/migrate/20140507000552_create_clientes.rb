class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :name
      t.string :ativo
      t.string :logradouro
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :estado
      t.string :cidade
      t.string :cep
      t.string :cnpj_cpf
      t.string :tipocad
      t.string :contato
      t.string :telefone
      t.string :email
      t.float :limite

      t.timestamps
    end
  end
end
