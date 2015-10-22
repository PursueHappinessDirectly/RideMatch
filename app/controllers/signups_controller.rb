class SignupsController < ApplicationController
    def new
        @signup = Signup.new
    end
    
    
    def create
        @signup = Signup.new(signup_params)
        if @signup.save
            redirect_to '/continue'
        else
            render '/student'
        end
    end
    
    private
  
    def signup_params
        params.require(:signup).permit(:last_name)
        params.require(:signup).permit(:first_name)
        params.require(:signup).permit(:gender)
        params.require(:signup).permit(:email)
        params.require(:signup).permit(:phone_number)
    end
    

end
