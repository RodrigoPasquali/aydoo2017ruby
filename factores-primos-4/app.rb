require 'sinatra'
require_relative './model/salida'
require_relative './model/bad_request'

  get '/primos' do
  	begin
  	  numero_a_factorizar = params['x']
      salida = Salida.new
      salida.inicializar
      salida_obtenida = salida.salida_orden_descendente(numero_a_factorizar)
    rescue
      salida_bad_request = BadRequest.new
      salida_bad_request.get_bad_request
    end
  end

  post '/primos' do 
  	begin
  	  numero_a_factorizar = params['x']
      salida = Salida.new
      salida.inicializar
      salida_obtenida = salida.salida_orden_ascendente(numero_a_factorizar)
    rescue
      salida_bad_request = BadRequest.new
      salida_bad_request.get_bad_request
    end
  end