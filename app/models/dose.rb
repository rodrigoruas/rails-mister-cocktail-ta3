class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  alidates :cocktail, uniqueness: { scope: :ingredient }
end
