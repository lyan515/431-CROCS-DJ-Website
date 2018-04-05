json.array!(@dj_portfolios) do |dj_portfolio|
  json.extract! dj_portfolio, :id, :name, :bio, :facebook_link, :instagram_link, :twitter_link, :soundcloud_link, :mixcloud_link
  json.url dj_portfolio_url(dj_portfolio, format: :json)
end
