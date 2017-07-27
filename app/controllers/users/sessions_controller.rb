class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]
  def create
    user = User.find_by(email: params[:email])
    if user.nil?
      flash[:login] = "입력하신 이메일dl 맞지 않습니다."
      redirect_to :back
    elsif  user.valid_password?(params[:password])
      session[:user_id] = user.id
      redirect_to '/home/shelf'
    else
      flash[:login] = "입력하신 이메일과 비밀번호가 맞지 않습니다."
      redirect_to :back
    end
  end
  
  def destroy
    @current_user = nil
    reset_session
    redirect_to '/users/sign_in'
  end
  
  
  # GET /resource/sign_in
  # def new
  #   super
  # end

  # def create
  #   super
    
  #   if current_user.nil?
  #     redirect_to '/users/sign_up'
  #     flash[:login] = 'please'
  #   elsif current_user.id.nil?
  #     redirect_to '/users/sign_up'
      
  #   end
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])
  end
end
