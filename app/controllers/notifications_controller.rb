class NotificationsController < ApplicationController
  
  def create
    @notification = Notification.new(params[:notification])

    respond_to do |format|
      if @notification.save
        format.html { redirect_to(params[:url], :notice => 'Thanks, we\'ll be in touch!') }
      else
        format.html { redirect_to(params[:url], :notice => 'Please include a valid city and email.') }
      end
    end
  end
  
end
