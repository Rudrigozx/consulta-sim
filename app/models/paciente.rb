class Paciente < ApplicationRecord
    has_many :consultums, dependent: :destroy
    has_many :medicos, through: :consultums
    has_one :endereco, :dependent => :destroy
    accepts_nested_attributes_for :endereco, allow_destroy: true
    validates :nome, length: { minimum: 4 } ,presence: true
    validates :cpf, length: { is: 11 } ,presence: true, numericality: { only_integer: true }, uniqueness: true
    validates :email, length: { minimum: 11 }, presence: true, uniqueness: true
    validates :data_de_nascimento, presence: true
    validate :validarData

  def validarData
    if data_de_nascimento.present? && data_de_nascimento > Date.today
      errors.add(:dataNascimento, "Data invalida")
    end
  end
end

