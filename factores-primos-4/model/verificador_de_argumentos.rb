class VerificadorDeArgumentos

	def verificar_si_es_numero(arg)
		valor = false
		if arg =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/
			return valor = true
		end
		return valor
	end
	
end	