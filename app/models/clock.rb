class Clock < ActiveRecord::Base
  belongs_to :company
  belongs_to :task

  validates :company_id, :task_id, presence: true
  validate :same_company

  def same_company
    if task.nil? || company_id != task.company_id
      errors.add(:task_id, :invalid)
    end
  end
end
