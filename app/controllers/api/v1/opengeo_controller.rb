class Api::V1::OpengeoController < ApplicationController
  def index
    uri_geo = URI("https://ipinfo.io?token=#{ENV["geo_token_api"]}")
    res_geo = Net::HTTP.get_response(uri_geo)
    output_geo = JSON.parse(res_geo.body)
    render json: output_geo
  end
end
