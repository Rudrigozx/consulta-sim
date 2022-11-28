class CreateConsulta < ActiveRecord::Migration[7.0]
  def change
    create_table :consulta do |t|
      t.datetime :data_hora
      t.string :medico

      t.timestamps
    end
  end
end
