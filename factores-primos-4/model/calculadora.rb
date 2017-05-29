class Calculadora

  def calcular_factores_primos(numero)
  	@factores_primos = Array.new
    if numero == 1
	  @factores_primos << 1
	  elsif numero >= 2
		@divisor = 2
		  while @divisor <= numero
			while numero % @divisor == 0
			  @factores_primos << @divisor 
			  numero = numero / @divisor
			end
			@divisor = @divisor + 1
		  end
	  else
	    @factores_primos = "Se debe introducir un numero entero mayor a 0"
	end
	return @factores_primos
  end

end

