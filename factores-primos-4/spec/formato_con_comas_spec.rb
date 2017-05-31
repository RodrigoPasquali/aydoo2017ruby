require 'rspec'
require_relative '../model/formato_con_comas'

describe 'FormatoConComas' do

  before do
  	@formateador = FormatoConComas.new
  end

  it '[2,1,5] deberia ser 2,1,5' do
  	valor_esperado = "2,1,5"
  	valor_obtenido = @formateador.aplicar_formato_con_comas([2,1,5])
    expect(valor_esperado).to eq valor_obtenido
  end  

  it '[2,2,2,3,3,5] deberia ser 2,2,2,3,3,5' do
  	valor_esperado = "2,2,2,3,3,5"
  	valor_obtenido = @formateador.aplicar_formato_con_comas([2,2,2,3,3,5])
    expect(valor_esperado).to eq valor_obtenido
  end  

end