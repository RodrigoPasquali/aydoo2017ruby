require 'rspec'
require_relative '../model/orden_ascendente'
require_relative '../model/calculadora'

describe 'OrdenAscendete' do

  before do
  	@calculadora = Calculadora.new
  	@orden_ascendente = OrdenAscendente.new
  end

  it 'factores primos de 1 deberia ser [1]' do
  	valor_esperado = [1]
  	factores_primos = @calculadora.calcular_factores_primos(1)
  	valor_obtenido = @orden_ascendente.aplicar_orden(factores_primos)
    expect(valor_esperado).to match_array(valor_obtenido)
  end  

  it 'factores primos de 360 deberia ser [2,2,2,3,3,5]' do
  	valor_esperado = [2,2,2,3,3,5]
  	factores_primos = @calculadora.calcular_factores_primos(360)
  	valor_obtenido = @orden_ascendente.aplicar_orden(factores_primos)
    expect(valor_esperado).to match_array(valor_obtenido)
  end 

  it 'factores primos de 90 deberia ser [2,3,3,5]' do
  	valor_esperado = [2,3,3,5]
  	factores_primos = @calculadora.calcular_factores_primos(90)
  	valor_obtenido = @orden_ascendente.aplicar_orden(factores_primos)
    expect(valor_esperado).to match_array(valor_obtenido)
  end 

end