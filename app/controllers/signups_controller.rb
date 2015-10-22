class SignupsController < ApplicationController
    def new
        @signup = Signup.new
    end
    
    def indexS 
        @signup = Signup.all 
    end
    
    def create
        @signup = Signup.new(signup_params)
        if @signup.save
            redirect_to '/posts'
        else
            render '/student'
        end
    end
    
    private
  
    def signup_params
        params.require(:signup).permit(:first_name, :last_name, :last_flight_number, :arriving_time, :number_baggage, :destination, :email, :phone_number)
    end
    

end
