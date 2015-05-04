class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :rut
      t.integer :num_alumno
      t.string :perfil
      t.string :sexo
      t.string :nombre
      t.string :paterno
      t.string :materno
      t.date :fecha_nacimiento
      t.string :estado_civil
      t.integer :hijos
      t.integer :celular
      t.string :email
      t.string :direccion
      t.string :comuna
      t.string :ciudad
      t.string :region
      t.string :postal
      t.string :pais
      t.integer :telefono
      t.string :direccion_lab
      t.string :comuna_lab
      t.string :ciudad_lab
      t.string :region_lab
      t.string :postal_lab
      t.string :pais_lab
      t.integer :telefono_lab
      t.string :universidad
      t.string :carrera
      t.string :especialidad
      t.integer :ano_ing_u
      t.integer :ano_egr_u
      t.integer :ano_ing_fjp
      t.string :religion
      t.string :adhesion_rel
      t.string :actividad
      t.boolean :directorio

      t.timestamps null: false
    end
  end
end
