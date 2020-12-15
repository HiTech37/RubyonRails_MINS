# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application
require 'rack/cors'
use Rack::Cors do

  allow do
    origins 'localhost:3000', "https://ifsel3.aca.ntu.edu.tw/hissco/main_stu.asp", /\Ahttps\:\/\/www\.ccxp\.nthu\.edu\.tw*\z/
    resource '*',
      :headers => :any,
      :methods => [:get, :post]
  end
end
