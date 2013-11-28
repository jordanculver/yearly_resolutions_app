class Goal < ActiveRecord::Base
  DIFFICULTY_LEVEL_VALUES = [*1..10]
  belongs_to :category
  #has_many :milestones
  #accepts_nested_attributes
  validates :difficulty_level, presence: true, inclusion: { in: DIFFICULTY_LEVEL_VALUES }
end
