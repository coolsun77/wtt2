json.array!(@qaeods) do |qaeod|
  json.extract! qaeod, :id, :eod_id
  json.url qaeod_url(qaeod, format: :json)
end
