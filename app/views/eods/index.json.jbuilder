json.array!(@eods) do |eod|
  json.extract! eod, :id, :date, :user_id
  json.url eod_url(eod, format: :json)
end
