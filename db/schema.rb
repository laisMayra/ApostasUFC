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

ActiveRecord::Schema.define(version: 20150409192027) do

  create_table "apostas", force: :cascade do |t|
    t.integer  "tipoAposta_id"
    t.integer  "luta_id"
    t.integer  "jogador_id"
    t.string   "resultado"
    t.float    "valor"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "apostas", ["jogador_id"], name: "index_apostas_on_jogador_id"
  add_index "apostas", ["luta_id"], name: "index_apostas_on_luta_id"
  add_index "apostas", ["tipoAposta_id"], name: "index_apostas_on_tipoAposta_id"

  create_table "arbitros", force: :cascade do |t|
    t.string   "nome"
    t.integer  "qtd_lutas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jogadores", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "rg"
    t.string   "telefone"
    t.string   "endereco"
    t.string   "usuario"
    t.string   "senha"
    t.string   "numeroConta"
    t.string   "agencia"
    t.string   "banco"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "lutadores", force: :cascade do |t|
    t.string   "nome"
    t.float    "altura"
    t.float    "peso"
    t.string   "categoria"
    t.string   "especialidade"
    t.integer  "ranking"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "lutas", force: :cascade do |t|
    t.integer  "lutador1_id"
    t.integer  "lutador2_id"
    t.integer  "arbitro_id"
    t.string   "vencedor"
    t.string   "tipoVitoria"
    t.integer  "rounds"
    t.datetime "horario"
    t.date     "data"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "lutas", ["arbitro_id"], name: "index_lutas_on_arbitro_id"
  add_index "lutas", ["lutador1_id"], name: "index_lutas_on_lutador1_id"
  add_index "lutas", ["lutador2_id"], name: "index_lutas_on_lutador2_id"

  create_table "tipo_apostas", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
