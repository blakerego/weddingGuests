json.array!(@rsvps) do |rsvp|
  json.extract! rsvp, :id, :code, :address
  json.url rsvp_url(rsvp, format: :json)
end
