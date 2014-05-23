json.array!(@guests) do |guest|
  json.extract! guest, :id, :firstname, :lastname, :code, :email
  json.url guest_url(guest, format: :json)
end
