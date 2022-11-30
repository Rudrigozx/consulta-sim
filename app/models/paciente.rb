class Paciente < ApplicationRecord

  has_many :consultum, :dependent => :destroy
  has_many :enderecos, :dependent => :destroy



  validates :nome, length: { minimum: 4 }
  validates :nome, presence: true


  validates :cpf, length: { is: 11 }
  validates :cpf, presence: true
  validates :cpf, numericality: { only_integer: true }
  validates :cpf, uniqueness: true

  validates :email, length: { minimum: 11 }
  validates :email, presence: true
  validates :email, uniqueness: true


  validates :data_de_nascimento, presence: true
  validate :validarData

  def validarData
    if data_de_nascimento.present? && data_de_nascimento > Date.today
      errors.add(:dataNascimento, "Data invalida")
    end
  end
end

