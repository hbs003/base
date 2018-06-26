class Seguro < ApplicationRecord
  belongs_to :user
  belongs_to :carteira

end
