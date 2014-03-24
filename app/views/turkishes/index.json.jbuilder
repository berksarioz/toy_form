json.array!(@turkishes) do |turkish|
  json.extract! turkish, :id, :title, :description, :type
  json.url turkish_url(turkish, format: :json)
end
