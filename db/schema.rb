# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140507005336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: true do |t|
    t.string   "name"
    t.string   "ativo"
    t.string   "logradouro"
    t.string   "numero"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "estado"
    t.string   "cidade"
    t.string   "cep"
    t.string   "cnpj_cpf"
    t.string   "tipocad"
    t.string   "contato"
    t.string   "telefone"
    t.string   "email"
    t.float    "limite"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comentarios", force: true do |t|
    t.string   "autor"
    t.text     "conteudo"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comentarios", ["post_id"], name: "index_comentarios_on_post_id", using: :btree

  create_table "dependents", force: true do |t|
    t.string   "name"
    t.string   "old"
    t.integer  "father_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dependents", ["father_id"], name: "index_dependents_on_father_id", using: :btree

  create_table "fathers", force: true do |t|
    t.string   "name"
    t.string   "old"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "for_pags", force: true do |t|
    t.string   "description"
    t.integer  "days"
    t.string   "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_pedidos", force: true do |t|
    t.decimal  "quantidade"
    t.integer  "produto_id"
    t.decimal  "valor_unitario"
    t.decimal  "valor_total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "item_pedidos", ["produto_id"], name: "index_item_pedidos_on_produto_id", using: :btree

  create_table "pedidos", force: true do |t|
    t.date     "dataaprovacao"
    t.date     "datapedido"
    t.integer  "cliente_id"
    t.integer  "tipo_pag_id"
    t.integer  "for_pags_id"
    t.float    "valortotal"
    t.string   "statuspedido"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pedidos", ["cliente_id"], name: "index_pedidos_on_cliente_id", using: :btree
  add_index "pedidos", ["for_pags_id"], name: "index_pedidos_on_for_pags_id", using: :btree
  add_index "pedidos", ["tipo_pag_id"], name: "index_pedidos_on_tipo_pag_id", using: :btree

  create_table "posts", force: true do |t|
    t.string   "titulo"
    t.text     "conteudo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produtos", force: true do |t|
    t.string   "name"
    t.float    "valor"
    t.string   "descricao"
    t.string   "unidade"
    t.float    "saldo"
    t.string   "ativo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relacionamentos", force: true do |t|
    t.string   "name"
    t.string   "tipo"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relacionamentos", ["user_id"], name: "index_relacionamentos_on_user_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "sons", force: true do |t|
    t.string   "name"
    t.string   "old"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tests", ["user_id"], name: "index_tests_on_user_id", using: :btree

  create_table "things", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "things", ["user_id"], name: "index_things_on_user_id", using: :btree

  create_table "tipo_pags", force: true do |t|
    t.string   "description"
    t.string   "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tiposuarios", force: true do |t|
    t.string   "name"
    t.string   "ativo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

end
