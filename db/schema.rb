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

ActiveRecord::Schema.define(:version => 20110201024552) do

  create_table "alumnos", :force => true do |t|
    t.string   "nacionalidad"
    t.integer  "cedula"
    t.string   "nombre"
    t.string   "apellido"
    t.boolean  "esta_activo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "correo"
  end

  create_table "cursos", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.boolean  "esta_activo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "evaluaciones", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.date     "fecha_ini"
    t.date     "fecha_fin"
    t.integer  "seccione_id"
    t.boolean  "esta_activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inscripciones", :force => true do |t|
    t.integer  "alumno_id"
    t.integer  "seccione_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notas", :force => true do |t|
    t.integer  "alumno_id"
    t.integer  "evaluacione_id"
    t.decimal  "nota"
    t.boolean  "esta_activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "periodos", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.boolean  "esta_abierto"
    t.boolean  "esta_activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "secciones", :force => true do |t|
    t.string   "nombre"
    t.integer  "curso_id"
    t.integer  "periodo_id"
    t.boolean  "esta_activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
