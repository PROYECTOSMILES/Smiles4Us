class Usuario < ActiveRecord::Base
 has_many :posts
 authenticates_with_sorcery!
  attr_accessible :crypted_password, :email, :salt, :username, :password_confirmation , :password
  validates_confirmation_of :password, message: "Ambos campos deben coincidir", if: :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
end
