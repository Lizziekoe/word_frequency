require'sinatra'
require'sinatra/reloader'
require'./lib/word_frequency'

get('/') do
  erb(:home)
end

get('/results') do
  @frequency = params.fetch('string').word_frequency(params.fetch('frequent_word'))
  erb(:results)
end