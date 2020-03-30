#lambda faz a verificação dos parâmetros

#lambda quando tem return, termina a sua execução
# e não retorna nada
metodo = lambda do |parametro|
	puts parametro + 10
end	

#converte lambda em Proc
[1,2,3,4,5].each(&metodo)

#chamamento normal
metodo.call(10)
