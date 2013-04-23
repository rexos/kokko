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

ActiveRecord::Schema.define(:version => 20130423150224) do

  create_table "associations", :force => true do |t|
    t.integer  "lesson_id"
    t.integer  "exercise_id"
    t.text     "repetitions"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "associations", ["exercise_id"], :name => "index_associations_on_exercise_id"
  add_index "associations", ["lesson_id", "exercise_id"], :name => "index_associations_on_lesson_id_and_exercise_id", :unique => true
  add_index "associations", ["lesson_id"], :name => "index_associations_on_lesson_id"

  create_table "comments", :force => true do |t|
    t.integer  "commenter"
    t.text     "body"
    t.integer  "feedback_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "comments", ["feedback_id"], :name => "index_comments_on_feedback_id"

  create_table "events", :force => true do |t|
    t.integer  "training_id"
    t.integer  "lesson_id"
    t.date     "start_time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "exercises", :force => true do |t|
    t.string   "name"
    t.string   "difficulty"
    t.text     "description"
    t.string   "video_url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "feedbacks", :force => true do |t|
    t.integer  "rating"
    t.text     "body"
    t.integer  "user_id"
    t.integer  "program_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "feedbacks", ["program_id"], :name => "index_feedbacks_on_program_id"
  add_index "feedbacks", ["user_id"], :name => "index_feedbacks_on_user_id"

  create_table "headshot_photos", :force => true do |t|
    t.string   "description"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.integer  "capturable_id"
    t.string   "capturable_type"
    t.datetime "image_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "lessons", :force => true do |t|
    t.string   "title"
    t.integer  "program_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "lessons", ["program_id"], :name => "index_lessons_on_program_id"

  create_table "messages", :force => true do |t|
    t.text     "body"
    t.integer  "from"
    t.integer  "to"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.boolean  "read",       :default => false
  end

  create_table "programs", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "difficulty"
  end

  create_table "relationships", :force => true do |t|
    t.integer  "follower"
    t.integer  "followed"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "relationships", ["followed"], :name => "index_relationships_on_followed"
  add_index "relationships", ["follower", "followed"], :name => "index_relationships_on_follower_and_followed", :unique => true

  create_table "statuses", :force => true do |t|
    t.integer  "user_id"
    t.integer  "association_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "statuses", ["association_id"], :name => "index_statuses_on_association_id"
  add_index "statuses", ["user_id", "association_id"], :name => "index_statuses_on_user_id_and_association_id", :unique => true
  add_index "statuses", ["user_id"], :name => "index_statuses_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "token"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.string   "role",            :default => "user"
    t.string   "first_name"
    t.string   "second_name"
    t.string   "where"
    t.integer  "my_training_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
