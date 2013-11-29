class Goal < ActiveRecord::Base
  DIFFICULTY_LEVEL_VALUES = [*1..10]
  STATUSES = [
    INACTIVE    = 'inactive',
    IN_PROGRESS = 'in_progress',
    COMPLETED   = 'completed'
  ]

  belongs_to :user

  validates :difficulty_level, presence: true, inclusion: { in: DIFFICULTY_LEVEL_VALUES }
  validates :status, presence: true, inclusion: { in: STATUSES }
  validates :user_id, presence: true

  scope :inactive,    -> { where(status: INACTIVE) }
  scope :in_progress, -> { where(status: IN_PROGRESS) }
  scope :completed,   -> { where(status: COMPLETED) }
end
