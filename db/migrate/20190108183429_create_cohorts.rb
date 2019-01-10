class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.date :start
      t.date :end
      t.string :name
      t.integer :course_id

      t.timestamps
    end
  end
end
