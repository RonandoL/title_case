require('sinatra')
require('sinatra/reloader')
require('./lib/title_case')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/title') do
  @title = params.fetch('title').title_case()  # will receive the input parameters from the 'title' field. We'll want that string to be title cased and then displayed on a fresh page.
  erb(:title)
end
