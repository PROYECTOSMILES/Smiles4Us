class notasCollector < Collector 
	require_relative 'database'

	 def conectar
    	@db = DataBase.new(@dbname, @username, @password)
  	end
	
	def getUsers()
		query = "select * from notas"
		arrayNotas = @db.getRows(query)
		return arrayNotas
	end

  	def desconectar
    	@db.desconectar
  	end
	
end