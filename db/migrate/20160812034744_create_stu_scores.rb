class CreateStuScores < ActiveRecord::Migration
  def change
    create_table :stu_scores do |t|
      t.integer :stuno
      t.integer :kcno
      t.float :score

      t.timestamps null: false
    end
  end
end
