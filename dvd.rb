require_relative 'midia'

class DVD < Midia

	def initialize(categoria, valor=0.0, titulo='', desconto=1.0)
		super(valor, titulo, desconto)
		@categoria = categoria
	end

	def to_s
		puts "Título: #{@titulo}"
		puts "Categoria: #{@categoria}"
		puts "Valor: #{@valor}"
	end	

	def ==(other)
    	self.class === other and
      	other.categoria == @categoria and
      	other.titulo == @titulo
  	end

  	alias eql? ==

  	alias equal? ==

  	def hash
    	@categoria.hash ^ @titulo.hash # XOR
  	end
end