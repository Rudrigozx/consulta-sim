class CreatePacientes < ActiveRecord::Migration[7.0]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :cpf
      t.string :email
      t.date :data_de_nascimento

      t.timestamps
    end
  end
end
