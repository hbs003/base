class Carteira < ApplicationRecord
  belongs_to :user
  has_many :seguros
end
