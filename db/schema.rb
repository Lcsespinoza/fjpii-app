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

ActiveRecord::Schema.define(version: 20150504175511) do

  create_table "users", force: :cascade do |t|
    t.integer  "rut"
    t.integer  "num_alumno"
    t.string   "perfil"
    t.string   "sexo"
    t.string   "nombre"
    t.string   "paterno"
    t.string   "materno"
    t.date     "fecha_nacimiento"
    t.string   "estado_civil"
    t.integer  "hijos"
    t.integer  "celular"
    t.string   "email"
    t.string   "direccion"
    t.string   "comuna"
    t.string   "ciudad"
    t.string   "region"
    t.string   "postal"
    t.string   "pais"
    t.integer  "telefono"
    t.string   "direccion_lab"
    t.string   "comuna_lab"
    t.string   "ciudad_lab"
    t.string   "region_lab"
    t.string   "postal_lab"
    t.string   "pais_lab"
    t.integer  "telefono_lab"
    t.string   "universidad"
    t.string   "carrera"
    t.string   "especialidad"
    t.integer  "ano_ing_u"
    t.integer  "ano_egr_u"
    t.integer  "ano_ing_fjp"
    t.string   "religion"
    t.string   "adhesion_rel"
    t.string   "actividad"
    t.boolean  "directorio"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
