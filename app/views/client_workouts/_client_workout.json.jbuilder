json.extract! client_workout, :id, :trainer, :duration, :dateofworkout, :paidamount, :created_at, :updated_at
json.url client_workout_url(client_workout, format: :json)
