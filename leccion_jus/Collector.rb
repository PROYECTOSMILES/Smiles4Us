class Collector
  require "rubygems"
	require "pg"

  attr_accessor :username, :password, :dbname;

	def initialize(dbname)
  	@username = "jus"
    @password = "Pa$$w0rd"
    @dbname = dbname
  end
  
 
end
