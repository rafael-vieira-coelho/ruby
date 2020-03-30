require_relative 'livro'
require_relative 'biblioteca'

biblioteca = Biblioteca.new

teste_e_design = Livro.new("Mauricio Aniche", 247, "123454")
web_design_responsivo = Livro.new "Tárcio Zemel", 189, "452565"

biblioteca.adiciona(teste_e_design)
biblioteca.adiciona web_design_responsivo

puts biblioteca
