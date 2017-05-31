require 'rspec'
require_relative '../model/orden_descendente'

describe 'OrdenDescendente' do

  before do
  	@orden_descendente = OrdenDescendente.new
  end

  it 'factores primos de [1,3] deberia ser [3,1]' do
  	valor_esperado = [3,1]
  	valor_obtenido = @orden_descendente.aplicar_orden([1,3])
    expect(valor_esperado).to match_array(valor_obtenido)
  end  

  it 'orden_descendente de [2,2,5,3,2,3] deberia ser [5,3,3,2,2,2]' do
    valor_esperado = [5,3,3,2,2,2]
    valor_obtenido = @orden_descendente.aplicar_orden([2,2,5,3,2,3])
    expect(valor_esperado).to match_array(valor_obtenido)
  end 

  it 'orden_descendente de [99,14,5,36,2] deberia ser [99,36,14,5,2]' do
    valor_esperado = [99,36,14,5,2]
    valor_obtenido = @orden_descendente.aplicar_orden([99,14,5,36,2])
    expect(valor_esperado).to match_array(valor_obtenido)
  end 


end