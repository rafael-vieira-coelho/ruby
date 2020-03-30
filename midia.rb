class Midia

	attr_accessor :valor
	attr_reader:titulo,:desconto

	def initialize(valor=0.0, titulo='', desconto=1.0)
		@valor = valor
		@titulo = titulo
		@desconto = desconto
	end

	def valor_com_desconto      
		@valor - (@valor * @desconto)/100
	end

end
