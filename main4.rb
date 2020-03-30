require_relative 'livro'

livro1 = Livro.new("Mauricio Aniche", "123454", "Suspense")
livro2 = Livro.new "Tárcio Zemel", "452565", "Biografia"
livro3 = Livro.new("Mauricio Aniche", "123454", "Suspense")

if livro1 == livro2
	puts 'IGUAIS'
else
	puts 'DIFERENTES'
end	

if livro1 == livro3
	puts 'IGUAIS'
else
	puts 'DIFERENTES'
end	

