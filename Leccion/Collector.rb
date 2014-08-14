class Collector
  require "rubygems"
	require "pg"

  attr_accessor :username, :password, :dbname;

	def initialize(dbname)
  	@username = "ronny"
    @password = 'Pa$$w0rd'
    @dbname = dbname
  end

  def conectar
      @db = DataBase.new(@dbname, @username, @password)
  end

  def desconectar
      @db.desconectar
  end

end
