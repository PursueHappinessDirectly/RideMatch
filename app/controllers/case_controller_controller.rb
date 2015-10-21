class CaseControllerController < ApplicationController
    
def index 
  @case_controller = Case.all 
end

end
