require 'sinatra'
require_relative 'config/environment.rb'

class App < Sinatra::Base
  get '/' do
    'Hello world!'
  end

  get '/goodbye' do
    "Goodbye"
  end

  get '/doctors' do
    "<ul>#{Doctor.all.map{|d| "<li><a href='/doctors/#{d.id}'>#{d.name}</a></li>"}.join('')}</ul>"
  end

  get '/doctors/new' do
    "Form goes here"
  end

  get '/doctors/:id' do
    doctor = Doctor.find(params[:id])
    "<h1>#{doctor.name}</h1><p>#{doctor.specialty}</p>"
  end

  post '/doctors' do
    d = Doctor.create(name: params[:doctor_name])
    redirect to "/doctors/#{d.id}"
  end


end

run App
