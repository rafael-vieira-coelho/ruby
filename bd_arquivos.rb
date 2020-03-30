require 'yaml'

class BancoDeArquivos

	def salva(livro)
		File.open('livros.yml', 'a') do |arquivo|
			obj_serial = YAML.dump(livro)
			arquivo.puts(obj_serial)
			arquivo.puts ""
		end	
	end

	def carrega() 
		File.open("livros.yml", "r").map do |livro_serializado|
			YAML.load livro_serializado
 		end
 	end
 end		
