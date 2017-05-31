class FormatoConComas

  def aplicar_formato_con_comas(array_factores_primos)
    @factores_primos_con_formato = array_factores_primos.join(',')
    @factores_primos_con_formato_string = @factores_primos_con_formato.to_s
  	return @factores_primos_con_formato_string
  end

end