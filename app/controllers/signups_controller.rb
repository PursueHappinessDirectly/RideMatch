class SignupsController < ApplicationController
	before_action :set_signup, only: [:show, :edit, :update, :destroy]

    def welcome
    end
    
    def new
        @signup = Signup.new
    end
    
    def index 
        @signup = Signup.all 
    end
    
    def show
    	
    end
    
    def edit
    end
    
    def update
    respond_to do |format|
      if @signup.update(signup_params)
        format.html { redirect_to @signup, notice: 'Profile was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
    
    def destroy
    	@signup.destroy
    	respond_to do |format|
      	format.html { redirect_to signups_url, notice: 'Information was successfully deleted.' }
        end
    end
    
    def create
        @signup = Signup.new(signup_params)
        respond_to do |format|
         if @signup.save
           	format.html { redirect_to @signup, notice: 'Profile was successfully created.' }
         else
             render '/new'
         end
        end 
    end


    private
    
    @signup_id = 0
    
    def set_signup
      @signup = Signup.find(params[:id])
    end
    
  
    def signup_params
        params.require(:signup).permit(:first_name, :last_name, :username, :email, :phone_number)
    end
    

end
