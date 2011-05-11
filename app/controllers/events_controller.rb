class EventsController < ApplicationController
  def index
    @city = request.request_uri.split("/")[1]
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
