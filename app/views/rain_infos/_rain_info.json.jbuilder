json.extract! rain_info, :id, :date, :value, :city_id, :created_at, :updated_at
json.url rain_info_url(rain_info, format: :json)
