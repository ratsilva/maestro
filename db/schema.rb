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

ActiveRecord::Schema.define(version: 20170616195953) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string   "company_name"
    t.string   "contact_name"
    t.string   "zip_code"
    t.string   "adress"
    t.integer  "number"
    t.string   "district"
    t.string   "complement"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "phone_number"
    t.string   "cell_phone"
    t.string   "email"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "status"
  end

  create_table "deliveries", force: :cascade do |t|
    t.string   "software"
    t.string   "versao"
    t.string   "entregavel"
    t.binary   "anexo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "project_id"
    t.index ["project_id"], name: "index_deliveries_on_project_id", using: :btree
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "telefone"
    t.string   "celular"
    t.string   "cargo"
    t.string   "cpf"
    t.date     "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees_knowledges", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "knowledge_id"
    t.index ["employee_id"], name: "index_employees_knowledges_on_employee_id", using: :btree
    t.index ["knowledge_id"], name: "index_employees_knowledges_on_knowledge_id", using: :btree
  end

  create_table "employees_projects", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "project_id"
    t.index ["employee_id"], name: "index_employees_projects_on_employee_id", using: :btree
    t.index ["project_id"], name: "index_employees_projects_on_project_id", using: :btree
  end

  create_table "knowledges", force: :cascade do |t|
    t.string   "name"
    t.string   "group"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer  "id_usuario_origem"
    t.integer  "id_usuario_destino"
    t.string   "descricao"
    t.string   "assunto"
    t.boolean  "is_lida"
    t.boolean  "is_critica"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "destino"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.date     "date_begin"
    t.date     "date_end"
    t.decimal  "cost"
    t.text     "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "client_id"
    t.integer  "qtd_entregaveis"
    t.integer  "qtd_parcelas"
    t.integer  "qtd_horas"
    t.text     "status_projeto"
    t.text     "fase_projeto"
    t.text     "tipo"
    t.text     "plataforma"
    t.index ["client_id"], name: "index_projects_on_client_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "deliveries", "projects"
  add_foreign_key "projects", "clients"
end
