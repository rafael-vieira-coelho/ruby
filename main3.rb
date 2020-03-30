require_relative 'livro'
require_relative 'biblioteca'

biblioteca = Biblioteca.new

teste_e_design = Livro.new("Mauricio Aniche", "123454", "Suspense")
web_design_responsivo = Livro.new "Tárcio Zemel", "452565", "Biografia"

biblioteca.adiciona(teste_e_design, 247)
biblioteca.adiciona web_design_responsivo, 189

puts biblioteca
