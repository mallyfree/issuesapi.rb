require 'httparty'
require 'json'
require 'pry'

key = (File.read("./key.txt")).strip

jamaal_problem = HTTParty.patch "https://api.github.com/repos/TIY-DC-ROR-2015-Sep/notes/issues/9",
  headers:{
    "Authorization" => "token #{key}",
    "User-Agent" => "mallyfree"},
  body:{
    "state": "closed",
    "labels": ["problem solved"]
  }.to_json
#binding.pry
puts jamaal_problem.message
puts jamaal_problem.code
