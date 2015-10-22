class SignupsController < ApplicationController
    def new
        @signup = Signup.new
    end
    
    
    def create
        @signup = Signup.new(signup_params)
        if @signup.save
            redirect_to '/continue'
        else
            logger.debug 'Just do it'
            render '/student'
        end
    end
    
    private
  
    def signup_params
        params.require(:signup).permit(:last_name, :first_name, :gender, :email, :phone_number)
    end
    

end
