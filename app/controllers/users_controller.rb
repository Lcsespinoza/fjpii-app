class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)    
    if @user.save
      flash[:success] = "Exbecado creado con éxito!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:rut, :num_alumno, :perfil, :sexo, :nombre, :paterno, :materno, :fecha_nacimiento, :estado_civil, 
      							   :hijos, :celular, :direccion, :comuna, :ciudad, :region, :postal, :pais, :telefono, :direccion_lab, 
      							   :comuna_lab, :email, :password, :password_confirmation,  :ciudad_lab, :region_lab, :postal_lab, 
      							   :pais_lab, :telefono_lab, :universidad, :carrera, :especialidad, :ano_ing_u, :ano_egr_u, :ano_ing_fjp, 
      							   :religion, :adhesion_rel, :actividad, :directorio)
    end
end
