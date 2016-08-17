class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :tname
      t.integer :tsex
      t.integer :tdepartmentNo

      t.timestamps null: false
    end
  end
end
