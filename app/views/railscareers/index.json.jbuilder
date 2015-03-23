json.array!(@railscareers) do |railscareer|
  json.extract! railscareer, :id, :name, :content
  json.url railscareer_url(railscareer, format: :json)
end
