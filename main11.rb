require 'yaml'

require_relative 'livro'
require_relative 'biblioteca'
require_relative 'relatorio'
require_relative 'bd_arquivos'

liv1 = Livro.new("Mauricio Aniche", "123454", "Suspense", 198.89)
liv2 = Livro.new "Tárcio Zemel", "452565", "Biografia", 53.21
liv3 = Livro.new("Rogério Amaral", "1111", "Suspense", 12.90)
liv4 = Livro.new "Alberto de Souza", "1232", "Biografia", 135.99
biblioteca = Biblioteca.new
biblioteca.adiciona(liv1, 247)
biblioteca.adiciona(liv2, 248)
biblioteca.adiciona(liv3, 249)
biblioteca.adiciona(liv4, 250)


p Biblioteca.superclass.methods