json.array!(@radnom_apps) do |radnom_app|
  json.extract! radnom_app, :id, :name
  json.url radnom_app_url(radnom_app, format: :json)
end
