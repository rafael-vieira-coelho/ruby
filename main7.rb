require_relative 'livro'
require_relative 'biblioteca'
require_relative 'relatorio'

biblioteca = Biblioteca.new

liv1 = Livro.new("Stephen King", "123454", "Suspense", 198.89, "A Torre Negra")
liv2 = Livro.new "André Agassi", "452565", "Biografia", 53.21, "Minha Vida"
liv3 = Livro.new("Rafael Coelho", "1111", "Suspense", 12.90, "Sra. Fantini")
liv4 = Livro.new "Stephen King", "1232", "Suspense", 135.99, "It"

biblioteca.adiciona(liv1, 247)
biblioteca.adiciona(liv2, 248)
biblioteca.adiciona(liv3, 249)
biblioteca.adiciona(liv4, 250)

#puts biblioteca

relatorio = Relatorio.new(biblioteca)
puts 'Títulos: ', relatorio.obtem_titulos

