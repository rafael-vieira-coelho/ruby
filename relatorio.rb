require_relative 'biblioteca'


class Relatorio

	def initialize(biblioteca)
		@biblioteca = biblioteca
	end

	#@biblioteca.livros.values.map(&:valor).inject(:+)
	def total
		@biblioteca.livros.values.inject(0) { |soma, livro|
			soma += livro.valor
		}
	end	

	def obtem_titulos
		@biblioteca.livros.values.map &:titulo
	end	
end	

