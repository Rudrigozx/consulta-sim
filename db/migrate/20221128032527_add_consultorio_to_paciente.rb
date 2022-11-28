class AddConsultorioToPaciente < ActiveRecord::Migration[7.0]
  def change
    add_reference :pacientes, :consultorio, null: false, foreign_key: true
  end
end
