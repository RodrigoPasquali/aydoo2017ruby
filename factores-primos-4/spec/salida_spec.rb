require 'rspec'
require_relative '../model/salida'

describe 'Salida' do

  before do
    @salida = Salida.new
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

  it '"silla" deberia devolver mensaje de error' do
  	valor_esperado = "Debe ingresar un numero"
  	valor_obtenido = @salida.salida_orden_ascendente("silla")
    expect(valor_obtenido).to eq valor_esperado
  end 

  it '0 deberia devolver mensaje de error' do
  	valor_esperado = "Debe ingresar un numero mayor a 0"
  	valor_obtenido = @salida.salida_orden_ascendente(0)
    expect(valor_obtenido).to eq valor_esperado
  end 

  it '-1 deberia devolver mensaje de error' do
  	valor_esperado = "Debe ingresar un numero mayor a 0"
  	valor_obtenido = @salida.salida_orden_ascendente(-1)
    expect(valor_obtenido).to eq valor_esperado
  end 

end