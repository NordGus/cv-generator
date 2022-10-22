# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_21_095842) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "companies", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "companies_name_index", unique: true
  end

  create_table "data_biographies", force: :cascade do |t|
    t.string "content", null: false
    t.bigint "resume_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "data_biographies_data_resume_reference"
  end

  create_table "data_contacts", force: :cascade do |t|
    t.string "content", null: false
    t.string "link"
    t.integer "icon", default: 0, null: false
    t.bigint "person_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["icon"], name: "data_contacts_icon_enum_index"
    t.index ["person_id"], name: "data_contacts_person_reference"
  end

  create_table "data_educations", force: :cascade do |t|
    t.string "title", null: false
    t.string "institution", null: false
    t.date "date", null: false
    t.bigint "resume_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "data_educations_data_resume_reference"
  end

  create_table "data_languages", force: :cascade do |t|
    t.string "name", null: false
    t.integer "level", default: 0, null: false
    t.bigint "resume_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "data_languages_data_resume_reference"
  end

  create_table "data_resumes", force: :cascade do |t|
    t.integer "locale", default: 0, null: false
    t.string "name", null: false
    t.bigint "person_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "data_resumes_person_reference"
  end

  create_table "data_work_experiences", force: :cascade do |t|
    t.date "from", null: false
    t.date "to"
    t.text "description"
    t.bigint "resume_id", null: false
    t.bigint "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "data_work_experiences_companies_reference"
    t.index ["resume_id"], name: "data_work_experiences_data_resume_reference"
  end

  create_table "people", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "people_name_index"
  end

  create_table "technologies", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "technologies_name_index", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "data_biographies", "data_resumes", column: "resume_id"
  add_foreign_key "data_contacts", "people"
  add_foreign_key "data_educations", "data_resumes", column: "resume_id"
  add_foreign_key "data_languages", "data_resumes", column: "resume_id"
  add_foreign_key "data_resumes", "people"
  add_foreign_key "data_work_experiences", "companies"
  add_foreign_key "data_work_experiences", "data_resumes", column: "resume_id"
end
