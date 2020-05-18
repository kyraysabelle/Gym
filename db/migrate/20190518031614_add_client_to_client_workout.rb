class AddClientToClientWorkout < ActiveRecord::Migration[5.2]
  def change
    add_column :client_workouts, :client, :string
  end
end
