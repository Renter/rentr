class CreateDateRanges < ActiveRecord::Migration
  def change
    create_table :date_ranges do |t|
      t.string :start_date, null: false
      t.string :end_date, null: false
      t.timestamps
    end
  end
end
