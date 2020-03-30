require_relative 'livro'

biblioteca = []

teste_e_design = Livro.new("Mauricio Aniche", 247, "123454")
web_design_responsivo = Livro.new("Tárcio Zemel", 189, "452565")

biblioteca << teste_e_design
biblioteca << web_design_responsivo

puts biblioteca
