class CreateClassrooms < ActiveRecord::Migration[7.2]
  def change
    create_table :classrooms do |t|
      t.integer :number
      t.string :letter
      t.integer :students_count, default: 0
      t.references :school

      t.timestamps
    end
  end
end
