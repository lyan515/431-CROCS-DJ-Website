json.array!(@gig_requests) do |gig_request|
  json.extract! gig_request, :id, :name, :address, :phone, :email, :gig_date, :gig_time
  json.url gig_request_url(gig_request, format: :json)
end
