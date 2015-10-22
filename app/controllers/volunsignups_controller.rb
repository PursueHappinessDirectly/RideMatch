class VolunsignupsController < ApplicationController
    def new
        @volun_signup = Volunsignup.new
    end
    
    def create
        @volun_signup = Volunsignup.new(volun_signup_params)
        if @volun_signup.save
            redirect_to '/posts'
        else
            render '/volunteer'
        end
    end
    
    private
  
    def volun_signup_params
        params.require(:volunsignup).permit(:first_name, :last_name, :car_type, :car_capacity, :email, :phone_number)
    end
    
end
