class RequestsController < ApplicationController
    before_action :set_request, only: [:show, :edit, :update, :destroy]
    
    def new
    	@request =  Request.new
    	
    end
    
    def create
        @request = Request.new(request_params)
        respond_to do |format|
         if @request.save
           	format.html { redirect_to '/requests/index', notice: 'Ride request was successfully created.' }
         else
             render '/new'
         end
        end 
    end
    
    def index 
        @request = Request.all 
    end
    
    def destroy
    	@request.destroy
    	respond_to do |format|
      	format.html { redirect_to '/requests/index' , notice: 'Ride request was successfully deleted.' }
        end
    end
    
    def show
   	    @signup = Signup.where("username" => @request.request_id)
   	    if @request.accept_id != nil
   	       @volunteer = Signup.where("username" => @request.accept_id)
   	    end	
    end
    
    def edit	
    end
    
    def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to '/requests/index', notice: 'Request was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
    
	private
    
    def set_request
      @request = Request.find(params[:id])
    end
  
    def request_params
        params.require(:request).permit(:last_flight_number, :arriving_time, :number_baggage, :destination, :request_id, :accept_id)
    end
    
    
end
