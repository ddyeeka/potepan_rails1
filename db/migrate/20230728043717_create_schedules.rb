class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :title
      t.date :startDay
      t.date :finishDay
      t.boolean :allDay
      t.string :memo

      t.timestamps
    end
  end
end
