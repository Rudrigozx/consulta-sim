class Medico < ApplicationRecord
  has_many :consultum, :dependent => :destroy

  validates :nome, length: { minimum: 4 }
  validates :nome, presence: true
  validates :nome, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }

  validates :cpf, length: { is: 11 }
  validates :cpf, presence: true
  validates :cpf, numericality: { only_integer: true }
  validates :cpf, uniqueness: true

  validates :email, length: { minimum: 11 }
  validates :email, presence: true
  validates :email, uniqueness: true

  validates :especialidade, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :especialidade, presence: true
  validates :especialidade, length: { in: 4..20 }

  validates :crm, numericality: { only_integer: true }
  validates :crm, presence: true
  validates :crm, uniqueness: true
end
