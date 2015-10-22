class CaseControllerController < ApplicationController
    
def new
    @case = Case.new
end    
    
def index 
  @case = Case.all 
end

def create
    @case = Case.new(case_params)
    if @case.save
        redirect_to '/posts'
    else
        render '/continue'
    end   
end

private
    def case_params
        params.require(:case).permit(:last_flight_number)
        params.require(:case).permit(:arriving_time)
        params.require(:case).permit(:number_baggage)
        params.require(:case).permit(:destination)
    end

#def show
#  @case = Case.find(params[:id])
#end

end
