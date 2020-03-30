require_relative 'midia'

class Livro < Midia

	attr_accessor :numero_paginas,:categoria,:autor

	def initialize(autor, numero_paginas, categoria, valor=0.0, titulo='', desconto=1.0)
		super(valor, titulo, desconto)
		@autor = autor
		@numero_paginas = numero_paginas
		@categoria = categoria
	end

	def to_s
		puts "Título: #{@titulo}"
		puts "Autor: #{@autor}"
		puts "Páginas: #{@numero_paginas}"
		puts "Categoria: #{@categoria}"
		puts "Valor: #{@valor}"
	end	

	def autor
		@autor
	end

	def autor=(autor)
		@autor = autor
	end

	def ==(other)
    	self.class === other and
      	other.autor == @autor and
      	other.categoria == @categoria and
      	other.titulo == @titulo
  	end

  	alias eql? ==

  	alias equal? ==

  	def hash
    	@autor.hash ^ @categoria.hash ^ @titulo.hash # XOR
  	end
end