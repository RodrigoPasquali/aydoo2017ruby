class VerificadorDeArgumentos

  def verificar_si_es_numero(arg)
  	@valor = false
  	raise TypeError, 'El argumento debe ser un numero'	unless arg.is_a? Integer
    return @valor = true
  end

  def verificar_si_numero_es_mayor_a_cero(arg)
    @valor = false
    ArgumentError
    raise ArgumentError, 'El argumento debe ser un numero mayor a cero' unless arg > 0 
    return @valor = true
  end

end	