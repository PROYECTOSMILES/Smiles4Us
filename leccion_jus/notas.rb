class notas
attr_accessor :id , :nombre , :parcial , :final , :mejoramiento , :notapromedio	
	
	def initialize (id, nombre, parcial, final, mejoramiento, notapromedio)
		@id = id
		@nombre = nombre
		@parcial = parcial
		@final = final
		@mejoramiento = mejoramiento
		@notapromedio = notapromedio
	end

	def getIds()
    return @id
  end

  def setId=(id)
    @id = id
  end

  def getNombres()
    return @usuario
  end

  def setNombre=(nombre)
    @nombre = nombre
  end

  def getParcials()
    return @parcial
  end

  def setParcial=(parcial)
    @parcial = parcial
  end

  def getMejoramientos()
    return @mejoramiento
  end

  def setMejoramiento=(mejoramiento)
    @mejoramiento = mejoramiento
  end

  def getNotaspromedios()
    return @notapromedio
  end

  def setNotapromedio=(notapromedio)
    @notapromedio = notapromedio
  end
end