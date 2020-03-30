module Vendas

	require 'yaml'

	class BancoDeArquivos

		def salva(livro)
			File.open('livros.yml', 'a') do |arquivo|
				obj_serial = YAML.dump(livro)
				arquivo.puts(obj_serial)
				arquivo.puts ""
			end	
		end

		def carrega() 
			File.open("livros.yml", "r").map do |livro_serializado|
				YAML.load livro_serializado
	 		end
	 	end
	 end	

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


end