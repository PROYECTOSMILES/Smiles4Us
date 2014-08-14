require_relative 'Collector'
require_relative 'NotasCollector'

notas = NotasCollector.new('Leccion')
notas.conectar
notas.getNotas

puts 'Ingrese el nombre del estudiante:'
nomre = gets.chomp()
puts 'Ingrese la nota del parcial:'
parcial = gets.chomp()

puts 'Ingrese la nota final:'
final = gets.chomp()

puts 'Ingrese la nota del mejoramiento:'
mejoramiento = gets.chomp()

if parcial >= mejoramiento
	nota1 = parcial
	nota2 = final
elsif final >= mejoramiento
	nota1 = parcial
	nota2 = final
else
	nota1 = parcial
	nota2 = mejoramiento
end

promedio = (nota1 + nota2) / 2

notas.insertar(nombre, parcial, final, mejoramiento, promedio)

notas.each do |row|
	puts row
end