class database
  require "rubygems"
  require "pg"

  def initialize(dbname, username, password)
    #@conexion = PG::Connection.open(:dbname => '#{@dbname}', :user => '#{@username}', :password => '#{@password}')
    @conexion = PG::Connection.open(:dbname => 'leccion', :user => 'jus', :password => 'Pa$$w0rd')
  end

 def getRows(query)
    return @conexion.exec(query)
  end

  def desconectar
    @conexion.close
  end
end