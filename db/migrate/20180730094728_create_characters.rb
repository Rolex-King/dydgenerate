class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.references :user, index: true, foreign_key: true
      t.string  :nombre_personaje
      t.string  :clase
      t.string  :raza
      t.string  :alineamiento
      t.string  :deidad
      t.string  :tamaño
      t.integer :edad
      t.string  :sexo
      t.integer :altura
      t.integer :peso
      t.string  :ojos
      t.string  :cabello
      t.string  :piel
      t.text    :history
      t.string  :rasgos

      t.timestamps null: false
    end
  end
end
