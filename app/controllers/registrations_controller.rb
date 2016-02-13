# class that inherits devises registration controller
#   and is used for non devise params while registering
#   and editing profile
class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:first_name,
                                 :last_name,
                                 :birth_date,
                                 :email,
                                 :password,
                                 :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name,
                                 :last_name,
                                 :birth_date,
                                 :email,
                                 :password,
                                 :password_confirmation,
                                 :current_password)
  end
end
