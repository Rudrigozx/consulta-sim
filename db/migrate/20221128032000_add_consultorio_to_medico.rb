class AddConsultorioToMedico < ActiveRecord::Migration[7.0]
  def change
    add_reference :medicos, :consultorio, null: false, foreign_key: true
  end
end
