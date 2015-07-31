class UserInstagramController < ApplicationController
  before_filter :configure_devise_params, if: :devise_controller?
  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:email, :instagram_username, :password, :password_confirmation)
    end
  end

  def new
    @user = User.new
  end

  def create
    generated_password = Devise.friendly_token.first(8)
    @user = User.new(user_params)
    @user.password = generated_password
    if @user.save && params[:sign_up]
      flash[:notice] = "Cadastro efetuado com sucesso!"
      redirect_to root_path
    else
      flash[:alert] = "Dados inválidos!"
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :instagram_username)
  end

end
