class DataBase
  require "rubygems"
  require "pg"

  def initialize(dbname, username, password)
    @conexion = PG::Connection.open(:dbname => "#{dbname}", :user => "#{username}", :password => "#{password}")
  end

  def enviarScript(query)
    return @conexion.exec(query)
  end

  def desconectar
    @conexion.close
  end
end
