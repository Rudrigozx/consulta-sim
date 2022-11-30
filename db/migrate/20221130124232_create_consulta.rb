class CreateConsulta < ActiveRecord::Migration[7.0]
  def change
    create_table :consulta do |t|
      t.string :medico
      t.datetime :data_hora

      t.timestamps
    end
  end
end
