require_relative 'livro'
require_relative 'biblioteca'

biblioteca = Biblioteca.new

liv1 = Livro.new("Mauricio Aniche", "123454", "Suspense")
liv2 = Livro.new "Tárcio Zemel", "452565", "Biografia"
liv3 = Livro.new("Rogério Amaral", "1111", "Suspense")
liv4 = Livro.new "Alberto de Souza", "1232", "Biografia"

biblioteca.adiciona(liv1, 247)
biblioteca.adiciona(liv2, 248)
biblioteca.adiciona(liv3, 249)
biblioteca.adiciona(liv4, 250)

#puts biblioteca

livros_suspense = biblioteca.livros_por_categoria("Suspense")

livros_suspense.each {|livro| 
	puts livro
	puts '*'*30
}
