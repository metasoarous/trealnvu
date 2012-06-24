# serve up some trees!
require 'sinatra'
require 'json'

class TreAlnVu < Sinatra::Base

  get '/data/:filename' do
    basename = File.basename(params[:filename])
    return File.read(File.join('data',basename))
  end
end

