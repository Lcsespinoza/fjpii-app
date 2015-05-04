class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  validates :name, :email, :rut, :num_alumno, :perfil, :sexo, :nombre, :paterno, :materno, :fecha_nacimiento, :estado_civil, :celular, :email, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :rut, :num_alumno, uniqueness: true

  has_secure_password
  validates :password, length: { minimum: 6 }

end
