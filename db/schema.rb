# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_16_112906) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_enrollments", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "instructor"
    t.string "number"
    t.string "title"
    t.integer "credit"
    t.integer "total_enrollment"
    t.integer "user_id"
    t.integer "university_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enrollments", force: :cascade do |t|
    t.string "score"
    t.integer "course_id"
    t.integer "user_id"
    t.boolean "from_token", default: false, null: false
    t.integer "rank"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nthu_courses", force: :cascade do |t|
    t.string "instructor"
    t.string "number"
    t.string "title"
    t.integer "credit"
    t.integer "total_enrollment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["instructor"], name: "index_nthu_courses_on_instructor"
    t.index ["number"], name: "index_nthu_courses_on_number"
  end

  create_table "nthu_enrollments", force: :cascade do |t|
    t.string "score"
    t.bigint "nthu_course_id", null: false
    t.bigint "nthu_student_id", null: false
    t.boolean "from_token", default: false, null: false
    t.integer "rank"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nthu_course_id", "nthu_student_id"], name: "index_nthu_enrollments_on_nthu_course_id_and_nthu_student_id"
    t.index ["nthu_course_id"], name: "index_nthu_enrollments_on_nthu_course_id"
    t.index ["nthu_student_id", "nthu_course_id"], name: "index_nthu_enrollments_on_nthu_student_id_and_nthu_course_id"
    t.index ["nthu_student_id"], name: "index_nthu_enrollments_on_nthu_student_id"
  end

  create_table "nthu_students", force: :cascade do |t|
    t.string "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ntu_courses", force: :cascade do |t|
    t.string "instructor"
    t.string "number"
    t.string "title"
    t.integer "credit"
    t.integer "total_enrollment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["instructor"], name: "index_ntu_courses_on_instructor"
    t.index ["number"], name: "index_ntu_courses_on_number"
  end

  create_table "ntu_enrollments", force: :cascade do |t|
    t.string "score"
    t.bigint "ntu_course_id", null: false
    t.bigint "ntu_student_id", null: false
    t.boolean "from_token", default: false, null: false
    t.integer "rank"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ntu_course_id", "ntu_student_id"], name: "index_ntu_enrollments_on_ntu_course_id_and_ntu_student_id"
    t.index ["ntu_course_id"], name: "index_ntu_enrollments_on_ntu_course_id"
    t.index ["ntu_student_id", "ntu_course_id"], name: "index_ntu_enrollments_on_ntu_student_id_and_ntu_course_id"
    t.index ["ntu_student_id"], name: "index_ntu_enrollments_on_ntu_student_id"
  end

  create_table "ntu_students", force: :cascade do |t|
    t.string "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "universities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "university_courses", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "token"
    t.integer "university_id"
    t.string "number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "nthu_enrollments", "nthu_courses"
  add_foreign_key "nthu_enrollments", "nthu_students"
  add_foreign_key "ntu_enrollments", "ntu_courses"
  add_foreign_key "ntu_enrollments", "ntu_students"
end
