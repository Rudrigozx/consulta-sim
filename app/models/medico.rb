class Medico < ApplicationRecord
  belongs_to :consultorio
  has_one :agenda, dependent: :destroy
end
