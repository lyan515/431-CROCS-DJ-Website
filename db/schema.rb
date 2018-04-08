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

ActiveRecord::Schema.define(version: 20180408214046) do

# Could not dump table "dj_portfolios" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "gig_requests", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.date     "gig_date"
    t.time     "gig_time"
    t.integer  "gig_duration"
    t.boolean  "light_rent"
    t.boolean  "speaker_rent"
    t.string   "dj_preferred"
    t.string   "dj_actual"
    t.boolean  "approval"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "client_approval"
    t.float    "price"
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
