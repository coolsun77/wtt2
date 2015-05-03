json.array!(@loceods) do |loceod|
  json.extract! loceod, :id, :eod_id
  json.url loceod_url(loceod, format: :json)
end
