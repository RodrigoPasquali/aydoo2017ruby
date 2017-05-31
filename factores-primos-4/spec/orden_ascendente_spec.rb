require 'rspec'
require_relative '../model/orden_ascendente'
require_relative '../model/calculadora'

describe 'OrdenAscendete' do

  before do
  	@orden_ascendente = OrdenAscendente.new
  end

  it 'factores primos de 1 deberia ser [1]' do
  	valor_esperado = [1]
  	valor_obtenido = @orden_ascendente.aplicar_orden([1])
    expect(valor_esperado).to match_array(valor_obtenido)
  end  

  it 'orden_ascendente de [2,5,2,3,5] deberia ser [2,2,3,5,5]' do
  	valor_esperado = [2,2,3,5,5]
  	valor_obtenido = @orden_ascendente.aplicar_orden([2,5,2,3,5])
    expect(valor_esperado).to match_array(valor_obtenido)
  end 

  it 'orden_ascendente de [23,4,11,35,4,3] deberia ser [3,4,4,11,23,35]' do
  	valor_esperado = [3,4,4,11,23,35]
  	valor_obtenido = @orden_ascendente.aplicar_orden([23,4,11,35,4,3])
    expect(valor_esperado).to match_array(valor_obtenido)
  end 

end