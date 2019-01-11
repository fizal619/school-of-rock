class Cohort < ApplicationRecord
  has_and_belongs_to_many :students, -> { distinct }
  has_and_belongs_to_many :instructors, -> { distinct }
  belongs_to :course

end
