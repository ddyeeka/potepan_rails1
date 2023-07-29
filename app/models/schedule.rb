class Schedule < ApplicationRecord
  validates :title, presence:true, length: {maximum: 20}
  validates :startDay, presence:true
  validates :finishDay, presence:true
  validates :memo, length: {maximum: 500}

  validate :date_compare

  private

  def date_compare
    if startDay != nil && finishDay != nil && startDay > finishDay
      errors.add(:startDay,": 終了日は開始日以降日付で選択してください")
    end
  end 
end
