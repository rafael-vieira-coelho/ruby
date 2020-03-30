require livro

biblioteca = []

teste_e_design = Livro.new("Mauricio Aniche","123454", 247, 70.5)
web_design_responsivo = Livro.new "Tárcio Zemel","452565", 189, 67.9, 6

biblioteca << teste_e_design
biblioteca << web_design_responsivo

puts biblioteca
