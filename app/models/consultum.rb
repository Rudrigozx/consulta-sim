class Consultum < ApplicationRecord
  belongs_to :paciente
  belongs_to :Medico

  validates :medico, length: { minimum: 4 }, presence: true, format: { with: /\A[a-zA-Z]+\z/}

  #validates :data_hora,
  validates :data_hora, presence: true
  validate :validarData


  def validarData
    if data_hora.present? && data_hora < Date.today
      errors.add(:dataNascimento, "Data invalida")
    end
  end
end


