class NotasCollector < Collector
	require_relative 'DataBase'
	
	def getNotas()
		querySelect = "select * from notas"
		arraynotas = @db.enviarScript(querySelect)
		return arraynotas
	end

	def insertar(nombre, parcial, final, mejoramiento, promedio)
		queryInsert = "insert into notas(nombre, parcial, final, mejoramiento, notaPromedio) values('#{nombre}', '#{parcial}', '#{final}', '#{mejoramiento}')"
		@db.enviarScript(queryInsert)
	end

	def eliminar(nombre)
		queryDelete = "delete from notas where nombre = '#{nombre}'"
		@db.enviarScript(queryDelete)
	end

end