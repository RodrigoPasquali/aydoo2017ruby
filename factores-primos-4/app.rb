require 'sinatra'
require_relative './model/salida'

  get '/primos' do
  	numero_a_factorizar = params['x']
    salida = Salida.new
    salida.inicializar
    salida_obtenida = salida.salida_orden_descendente(numero_a_factorizar)
  end

  post '/primos' do 
  	numero_a_factorizar = params['x']
    salida = Salida.new
    salida.inicializar
    salida_obtenida = salida.salida_orden_ascendente(numero_a_factorizar)
  end