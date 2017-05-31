require 'rspec'
require_relative '../model/verificador_de_argumentos'

describe 'VerificadorDeArgumentos' do

  before do
  	@verificador = VerificadorDeArgumentos.new
  end

  it '360 deberia devolver true' do
  	valor_esperado = true
  	valor_obtenido = @verificador.verificar_si_es_numero("360")
    expect(valor_esperado).to eq valor_obtenido
  end

  it '1  deberia devolver true' do
    valor_esperado = true
    valor_obtenido = @verificador.verificar_si_es_numero("1")
    expect(valor_esperado).to eq valor_obtenido
  end

end