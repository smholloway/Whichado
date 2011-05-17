class HomeController < ApplicationController
  def index
  end
  
  def redirect
    # TODO: in future look up city based on ip
    redirect_to "/Austin"
  end
  
  def live
    # gets city name from URI and adds space for camel cased cities
    @cityOriginal = request.request_uri.split("/")[1]
    @city = @cityOriginal.titlecase
    
    render :layout => "landing"
  end
  
  def coming
    # gets city name from URI and adds space for camel cased cities
    @cityOriginal = request.request_uri.split("/")[1]
    @city = @cityOriginal.titlecase
    
    render :layout => "landing"
  end

end
