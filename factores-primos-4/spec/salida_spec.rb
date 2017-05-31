require 'rspec'
require_relative '../model/salida'

describe 'Salida' do

  before do
    @salida = Salida.new
    @salida.inicializar
  end

  it 'factores primos de 10 deberia devolver 2,5' do
  	valor_esperado = "2,5"
  	valor_obtenido = @salida.salida_orden_ascendente(10)
    expect(valor_obtenido).to eq valor_esperado
  end  

  it 'factores primos de 360 deberia devolver 2,2,2,3,3,5' do
  	valor_esperado = "2,2,2,3,3,5"
  	valor_obtenido = @salida.salida_orden_ascendente(360)
    expect(valor_obtenido).to eq valor_esperado
  end 

  it 'factores primos de 10 deberia devolver 5,2' do
  	valor_esperado = "5,2"
  	valor_obtenido = @salida.salida_orden_descendente(10)
    expect(valor_obtenido).to eq valor_esperado
  end  

  it 'factores primos de 360 deberia devolver 5,3,3,2,2,2' do
  	valor_esperado = "5,3,3,2,2,2"
  	valor_obtenido = @salida.salida_orden_descendente(360)
    expect(valor_obtenido).to eq valor_esperado
  end

end