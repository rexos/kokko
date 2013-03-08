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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130307213850) do

  create_table "associations", :force => true do |t|
    t.integer  "lesson_id"
    t.integer  "exercise_id"
    t.integer  "repetitions"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "associations", ["exercise_id"], :name => "index_associations_on_exercise_id"
  add_index "associations", ["lesson_id", "exercise_id"], :name => "index_associations_on_lesson_id_and_exercise_id", :unique => true
  add_index "associations", ["lesson_id"], :name => "index_associations_on_lesson_id"

  create_table "exercises", :force => true do |t|
    t.string   "name"
    t.string   "difficulty"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "lessons", :force => true do |t|
    t.string   "title"
    t.integer  "program_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "lessons", ["program_id"], :name => "index_lessons_on_program_id"

  create_table "programs", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
