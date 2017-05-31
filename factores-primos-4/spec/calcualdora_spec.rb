require 'rspec'
require_relative '../model/calculadora'

describe 'Calculadora' do

  before do
  	@calculadora = Calculadora.new
  end

  it 'factores primos de 1 deberia ser [1]' do
  	valor_esperado = [1]
  	valor_obtenido = @calculadora.calcular_factores_primos(1)
    expect(valor_esperado).to match_array(valor_obtenido)
  end  

  it 'factores primos de 5 deberia ser [5]' do
  	valor_esperado = [5]
  	valor_obtenido = @calculadora.calcular_factores_primos(5)
    expect(valor_esperado).to match_array(valor_obtenido)
  end 

  it 'factores primos de 360 deberia ser [2,2,2,3,3,5]' do
    valor_esperado = [5,2,2,3,3,2]
    valor_obtenido = @calculadora.calcular_factores_primos(360)
    expect(valor_esperado).to match_array(valor_obtenido)
  end

end