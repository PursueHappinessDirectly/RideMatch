class AcceptsController < ApplicationController
	def index
		@request = Request.all 
	end
	
	def show
		@request = Request.find(params[:id])
   	    @signup = Signup.where("username" => @request.request_id)
   	    if @request.accept_id != nil
   	       @volunteer = Signup.where("username" => @request.accept_id)
   	    end	
    end
    
    def edit
    	@request = Request.find(params[:id])
    end
    
    def update
    @request = Request.find(params[:id])
    respond_to do |format|
      if @request.update(request_params)
      	MatchMailer.requester_email(@request).deliver_later
      	MatchMailer.accepter_email(@request).deliver_later
        format.html { redirect_to '/accepts/index', notice: 'Accept successfully.' }
      else
        format.html { render :edit }
      end
    end
  	end
  	
  	def unmatch
  		 @request = Request.find(params[:id])
  		 @request.accept_id = nil
  	end
  	
  	private
  	
  	def request_params
        params.require(:request).permit(:last_flight_number, :arriving_time, :number_baggage, :destination, :request_id, :accept_id)
    end
end
