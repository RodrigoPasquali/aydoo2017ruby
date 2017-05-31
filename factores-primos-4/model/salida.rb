require_relative 'verificador_de_argumentos'
require_relative 'formato_con_comas'
require_relative 'orden_ascendente'
require_relative 'orden_descendente'
require_relative 'calculadora'

class Salida
  attr_accessor :calculadora, :verificador, :formateador, :ordenador_ascendente, :ordenador_descendente

  def inicializar
  	self.calculadora = Calculadora.new
    self.verificador = VerificadorDeArgumentos.new
    self.formateador = FormatoConComas.new
    self.ordenador_ascendente = OrdenAscendente.new
    self.ordenador_descendente = OrdenDescendente.new
  end

  def salida_orden_ascendente(numero_a_factorizar)
    @verificador.verificar_si_es_numero(numero_a_factorizar)
    @verificador.verificar_si_numero_es_mayor_a_cero(numero_a_factorizar)
    @factores_primos = @calculadora.calcular_factores_primos(numero_a_factorizar)
    @factores_ordenados = @ordenador_ascendente.aplicar_orden(@factores_primos)
    @factores_ordenados_con_formato = @formateador.aplicar_formato_con_comas(@factores_ordenados)
    @salida_obtenida = @factores_ordenados_con_formato
  end

  def salida_orden_descendente(numero_a_factorizar)
    @verificador.verificar_si_es_numero(numero_a_factorizar)
    @verificador.verificar_si_numero_es_mayor_a_cero(numero_a_factorizar)
    @factores_primos = @calculadora.calcular_factores_primos(numero_a_factorizar)
    @factores_ordenados = @ordenador_descendente.aplicar_orden(@factores_primos)
    @factores_ordenados_con_formato = @formateador.aplicar_formato_con_comas(@factores_ordenados)
    @salida_obtenida = @factores_ordenados_con_formato
  end

end