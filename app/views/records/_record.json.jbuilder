json.extract! record, :id, :pb_weight, :pb_time, :pb_date, :notes, :created_at, :updated_at
json.url record_url(record, format: :json)
