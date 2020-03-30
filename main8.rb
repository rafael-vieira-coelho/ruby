def metodo_comum(parametro, metodo1, metodo2)
	metodo1.call(parametro)
	metodo2.call(parametro)
end	

parametro = 10

metodo1 = Proc.new do |parametro|
	puts parametro + 10
end	

metodo2 = Proc.new do |parametro|
	puts parametro - 10
end	

metodo_comum(parametro, metodo1, metodo2)