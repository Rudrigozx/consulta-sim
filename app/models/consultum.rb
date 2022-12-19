class Consultum < ApplicationRecord
  belongs_to :paciente
  belongs_to :Medico
  validates :data_hora, presence: true ,validarData:

  def validarData
    if data_hora.present? && data_hora < Date.today
      errors.add(:dataNascimento, "Data invalida")
    end
  end
end


