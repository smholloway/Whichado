class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def unCamel(str)
    if str.nil?
     return ""
    end
    str.gsub!(/([A-Z]+|[A-Z][a-z])/) {|x| ' ' + x }
    str.gsub!(/[A-Z][a-z]+/) {|x| ' ' + x }
    return str
  end
end
