class Biblioteca

	attr_accessor :livros #get/set
	#attr_reader :livros get
	#attr_writer :livros set

	def initialize
		@livros = {}
	end	

	def adiciona(livro, isbn)
		@livros[isbn] = livro
	end		

	def to_s
		for isbn in @livros.keys
			puts '='*40
			puts "ISBN: #{isbn}"
			puts @livros[isbn]
			puts '='*40
		end	
	end	

	def livros_por_categoria(categoria)
		livros_categoria = []
		@livros.each {|isbn, livro| livros_categoria << livro if livro.categoria == categoria }
		livros_categoria
	end	
end
