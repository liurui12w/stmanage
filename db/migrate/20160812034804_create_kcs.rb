class CreateKcs < ActiveRecord::Migration
  def change
    create_table :kcs do |t|
      t.string :kcname
      t.float :kcscore
      t.integer :teacherno
      t.string :rails
      t.string :g
      t.string :model
      t.string :teacher
      t.string :tname
      t.integer :tsex
      t.integer :tdepartmentNo

      t.timestamps null: false
    end
  end
end
