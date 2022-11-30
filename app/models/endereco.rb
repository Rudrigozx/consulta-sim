class Endereco < ApplicationRecord
  belongs_to :paciente


  validates :cep, numericality: { only_integer: true }
  validates :cep, presence: true
  validates :cep, length: { is: 8 }

  validates :cidade, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :cidade, presence: true
  validates :cidade, length: { in: 4..20 }

  validates :bairro, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :bairro, presence: true
  validates :bairro, length: { in: 4..30 }

  validates :logradouro, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :logradouro, presence: true
  validates :logradouro, length: { in: 4..40 }

  validates :complemento, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :complemento, presence: true
  validates :complemento, length: { in: 4..100 }
end

