class Ksiazka < ApplicationRecord
  validates :ilosc, numericality: { only_integer: true }
  validates :ilosc, presence: true
  validates :tytul, presence: true
  validates :autor, presence: true
end
