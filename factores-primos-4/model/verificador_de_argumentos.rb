class VerificadorDeArgumentos

  def verificar_si_es_numero(arg)
  	@valor = false
    if arg.is_a? Integer
   	 @valor = true
    end
    return @valor
  end

  def verificar_si_numero_es_mayor_a_cero(arg)
    @valor = false
    if arg > 0
   	 @valor = true
    end
    return @valor
  end

end	