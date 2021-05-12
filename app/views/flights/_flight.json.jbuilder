json.extract! flight, :id, :number, :origin, :destination, :date, :plane_id, :created_at, :updated_at, :reservations
json.extract! flight.plane, :name, :rows, :columns
json.url flight_url(flight, format: :json)

