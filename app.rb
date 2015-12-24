require('sinatra')
require('sinatra/reloader')
require('./lib/change')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @result = (params.fetch('number')).to_i.change
  erb(:result)
end
