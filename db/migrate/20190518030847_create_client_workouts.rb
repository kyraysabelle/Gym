class CreateClientWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :client_workouts do |t|
      t.string :trainer
      t.integer :duration
      t.datetime :dateofworkout
      t.decimal :paidamount

      t.timestamps
    end
  end
end
