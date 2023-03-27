class HeroPower < ApplicationRecord
    belongs_to :hero
    belongs_to :power
  
    validates_inclusion_of :strength, in: %w[Strong Weak Average]
  end