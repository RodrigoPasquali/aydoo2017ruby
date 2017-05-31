require_relative 'verificador_de_argumentos'
require_relative 'formato_con_comas'
require_relative 'orden_ascendente'
require_relative 'orden_descendente'
require_relative 'calculadora'

class Salida 

  def salida_orden_ascendente(numero_a_factorizar)
  	@calculdora = Calculadora.new
    @verificador = VerificadorDeArgumentos.new
    @formateador = FormatoConComas.new
    @orden_ascendente = OrdenAscendente.new
    @ordenador_descendente = OrdenDescendente.new
    @salida_obtenida
    if @verificador.verificar_si_es_numero(numero_a_factorizar) == true
      if @verificador.verificar_si_numero_es_mayor_a_cero(numero_a_factorizar) == true
        factores_primos = @calculdora.calcular_factores_primos(numero_a_factorizar)
        factores_ordenados = @orden_ascendente.aplicar_orden(factores_primos)
        factores_ordenados_con_formato = @formateador.aplicar_formato_con_comas(factores_ordenados)
      	@salida_obtenida = factores_ordenados_con_formato
      else
      	"Debe ingresar un numero mayor a 0"
      end
    else
      "Debe ingresar un numero"
    end
  end

    def salida_orden_ascendente(numero_a_factorizar)
  	@calculdora = Calculadora.new
    @verificador = VerificadorDeArgumentos.new
    @formateador = FormatoConComas.new
    @orden_ascendente = OrdenAscendente.new
    @ordenador_descendente = OrdenDescendente.new
    @salida_obtenida
    if @verificador.verificar_si_es_numero(numero_a_factorizar) == true
      if @verificador.verificar_si_numero_es_mayor_a_cero(numero_a_factorizar) == true
        factores_primos = @calculdora.calcular_factores_primos(numero_a_factorizar)
        factores_ordenados = @orden_ascendente.aplicar_orden(factores_primos)
        factores_ordenados_con_formato = @formateador.aplicar_formato_con_comas(factores_ordenados)
      	@salida_obtenida = factores_ordenados_con_formato
      else
      	"Debe ingresar un numero mayor a 0"
      end
    else
      "Debe ingresar un numero"
    end
  end

end