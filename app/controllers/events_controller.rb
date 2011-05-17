class EventsController < ApplicationController
  def index
    @cityOriginal = request.request_uri.split("/")[1]
    @city = @cityOriginal.titlecase
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
