class EventsController < ApplicationController
  def index
    # gets city name from URI and adds space for camel cased cities
    @city = unCamel(request.request_uri.split("/")[1])
  end
  
  def show
  end
  
  def new
  end
  
  def edit
  end
  
  def create
  end
  
  def update
  end
  
  def destroy
  end
  
end
