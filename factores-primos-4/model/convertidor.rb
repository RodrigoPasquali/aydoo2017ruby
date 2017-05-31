require_relative 'verificador_de_argumentos'

class Convertidor 

  def convertir_de_string_a_integer(arg)
  	verificador = VerificadorDeArgumentos.new
  	verificador.verificar_si_es_numero(arg)
    @valor = arg.to_i
    return @valor
  end

end