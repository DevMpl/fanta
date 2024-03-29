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

ActiveRecord::Schema.define(version: 20161215092839) do

  create_table "fanta_designgables", force: :cascade do |t|
    t.integer  "form_design_id",   limit: 4
    t.integer  "designgable_id",   limit: 4
    t.string   "designgable_type", limit: 255
    t.string   "content",          limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "fanta_form_designs", force: :cascade do |t|
    t.integer  "project_id", limit: 4
    t.string   "name",       limit: 255
    t.string   "type",       limit: 255
    t.string   "form_type",  limit: 255
    t.string   "slug",       limit: 255
    t.string   "content",    limit: 255
    t.string   "status",     limit: 255
    t.integer  "sequence",   limit: 4
    t.text     "free",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "fanta_projects", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "model",      limit: 255
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
