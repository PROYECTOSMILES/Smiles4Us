require_relative 'Collector'
require_relative 'notasCollector'

notas = NotasCollector.new('leccion')
notas.conectar

arrayNotas = notas.getNotas()
arrayNotas.each do |row|
			puts row
		end
notas.desconectar