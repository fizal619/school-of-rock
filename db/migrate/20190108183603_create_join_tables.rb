class CreateJoinTables < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts_instructors do |t|
      t.integer :cohort_id
      t.integer :instructor_id
    end

    create_table :cohorts_students do |t|
      t.integer :cohort_id
      t.integer :student_id
    end
  end
end
